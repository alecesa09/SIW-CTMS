import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import CircularProgress from '@mui/material/CircularProgress';
import getHomeSearch from '../../service/HomeService';
import type { HomeSearchDTO } from '../../types';

import { BACKEND_URL } from '../config';

function Search() {
    const [valoreInput, setValoreInput] = useState('');
    const [opzioni, setOpzioni] = useState<HomeSearchDTO[]>([]);
    const [caricamento, setCaricamento] = useState(false);
    
    const navigate = useNavigate();

    useEffect(() => {
        if (valoreInput.trim() === "") {
            setOpzioni([]);
            return;
        }

        // Debounce di 300ms per evitare di inviare una richiesta API a ogni singola lettera digitata
        const delayDebounceFn = setTimeout(async () => {
            setCaricamento(true);
            try {
                const dati = await getHomeSearch(valoreInput);
                // È fondamentale ordinare l'array per la proprietà di raggruppamento (tipo),
                // altrimenti l'Autocomplete di MUI potrebbe mostrare intestazioni duplicate.
                const datiOrdinati = dati.sort((a, b) => b.tipo.localeCompare(a.tipo));
                setOpzioni(datiOrdinati);
            } catch (error) {
                console.error("Errore recupero dati:", error);
            } finally {
                setCaricamento(false);
            }
        }, 300);

        return () => clearTimeout(delayDebounceFn);
    }, [valoreInput]);

    // Gestione del reindirizzamento al momento della selezione
    const handleItemClick = (opzione: HomeSearchDTO) => {
        const tipo = opzione.tipo.toLowerCase();

        if (tipo === 'torneo') {
            navigate(`/torneo/${opzione.id}`);
            console.log(opzione.id);
            
        } else if (tipo === 'squadra') {
            window.location.href = `${BACKEND_URL}/squadra/${opzione.id}`;
        } else if (tipo === 'giocatore') {
            window.location.href = `${BACKEND_URL}/giocatore/${opzione.id}`;
        }
    };

    return (
        <div style={{ width: 300 }}>
            <Autocomplete
                id="search-autocomplete"
                options={opzioni}
                loading={caricamento}
                inputValue={valoreInput}
                // Gestisce il cambio del testo digitato
                onInputChange={(event, newInputValue) => {
                    setValoreInput(newInputValue);
                }}
                onChange={(event, newValue) => {
                    if (newValue) {
                        handleItemClick(newValue);
                    }
                }}
                
                getOptionLabel={(option) => option.nome}
                // Raggruppa automaticamente in base al tipo (es. TORNEO, SQUADRA)
                groupBy={(option) => option.tipo.toUpperCase()}
                // Renderizza la riga dell'opzione
                renderOption={(props, option) => {
                    const { key, ...optionProps } = props;
                    return (
                        <li key={option.id} {...optionProps}>
                            {option.nome}
                            {" "}
                            {option.tipo === "GIOCATORE" && option.cognome && (<span>{option.cognome}</span>)}
                        </li>
                    );
                }}
                
                renderInput={(params: any) => {
                    // Estraiamo InputProps dal resto dei parametri per evitare il conflitto
                    const { InputProps, ...altriParametri } = params;
                    
                    return (
                        <TextField
                            {...altriParametri}
                            label="Cerca"
                            variant="outlined"
                            InputProps={{
                                ...InputProps, // Usiamo quello estratto
                                endAdornment: (
                                    <React.Fragment>
                                        {caricamento ? <CircularProgress color="inherit" size={20} /> : null}
                                        {InputProps?.endAdornment}
                                    </React.Fragment>
                                ),
                            }}
                            sx={{
                                '& .MuiInputLabel-root': { color: 'white' },
                                '& .MuiInputBase-input': { color: 'white' },
                                '& .MuiOutlinedInput-root': {
                                    borderRadius: '20px',
                                    '& .MuiOutlinedInput-notchedOutline': { borderColor: 'white' },
                                    '&:hover .MuiOutlinedInput-notchedOutline': { borderColor: 'white' },
                                    '&.Mui-focused .MuiOutlinedInput-notchedOutline': { borderColor: 'white' },
                                }
                            }}
                        />
                    );
                }}
                // Personalizzazione stilistica del pannello a discesa (Paper) e dei gruppi
                slotProps={{
                    paper: {
                        sx: {
                            backgroundColor: 'var(--colore-accento-soft)',
                            color: 'white',
                            '& .MuiAutocomplete-groupLabel': {
                                backgroundColor: 'var(--colore-accento-soft)',
                                color: '#aaa',
                                fontWeight: 'bold'
                            },
                            '& .MuiAutocomplete-option': {
                                '&[data-focus="true"]': {
                                    backgroundColor: 'rgba(255, 255, 255, 0.08)',
                                },
                                '&[aria-selected="true"]': {
                                    backgroundColor: 'rgba(255, 255, 255, 0.16)',
                                }
                            }
                        }
                    }
                }}
            />
        </div>
    );
}

export default Search;
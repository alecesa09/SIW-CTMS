package it.uniroma3.siw.validation;


import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import java.time.LocalDate;
public class NotFutureYearValidator implements ConstraintValidator<NotFutureYear, LocalDate> {
 @Override
 public boolean isValid(LocalDate value, ConstraintValidatorContext context) {
	 if (value == null) {
	 return true;
	 }
	 return !(value.isAfter(LocalDate.now()) );
	 }
}

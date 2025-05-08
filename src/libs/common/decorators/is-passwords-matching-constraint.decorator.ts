import { RegisterDto } from '@/auth/dto/register.dto';
import {
  ValidationArguments,
  ValidatorConstraint,
  ValidatorConstraintInterface,
} from 'class-validator';

@ValidatorConstraint({ name: 'IsPasswordMatching', async: false })
export class IsPasswordsMatchingConstraint implements ValidatorConstraintInterface {
  public validate(passwordRepeat: string, args: ValidationArguments) {
    const obj = args.object as RegisterDto;
    return obj.password === passwordRepeat;
  }

  public defaultMessage(validationArguments?: ValidationArguments): string {
    return 'Пароли не совпадают';
  }
}

class TextFieldValidation {
  static bool phoneValidate(String value) {
    final regExp = RegExp(r'^[6-9]\d{9,13}$');
    return regExp.hasMatch(value);
  }

  static bool indianNumberValidate(String value) {
    final regExp = RegExp(r'(^[6-9]\d{9}$)');
    return regExp.hasMatch(value);
  }

  static String? mobileValidateIndia(String value) {
    String pattern = r'^\d{10}$';
    RegExp regExp = RegExp(pattern);

    if (value.isEmpty) {
      return 'Phone number required';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? mobileValidateAll(String value) {
    String pattern = r'^\d{8,13}$';
    RegExp regExp = RegExp(pattern);

    if (value.isEmpty) {
      return 'Phone number required';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter valid name';
    } else if (!RegExp(r'^[a-zA-Z. ]*$').hasMatch(value)) {
      return 'Please enter only valid characters';
    } else {
      return null;
    }
  }

  static String? jobLocationValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter job location';
    } else {
      return null;
    }
  }

  static String? companyNameValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter company name';
    } else {
      return null;
    }
  }

  static String? jobDetailsValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter job details ';
    } else {
      return null;
    }
  }

  static String? validateReferralCode(String value) {
    if (value.isEmpty) {
      return 'Please enter referral code ';
    } else {
      return null;
    }
  }

  static String? documentIdValidation(String value) {
    if (value.isEmpty) {
      return 'Document id is required';
    } else {
      return null;
    }
  }

  static String? validateAadhaar(String value) {
    if (value.isEmpty) {
      return 'Aadhaar number is required';
    } else if (value.length != 12) {
      return 'Aadhaar number must be 12 digits';
      //Should have numbers only
    } else if (!RegExp(r'^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$').hasMatch(value)) {
      return 'Invalid Aadhaar number';
    } else {
      return null;
    }
  }

  static String? validatePAN(String value) {
    if (value.isEmpty) {
      return 'PAN card number is required';
    } else if (value.length != 10) {
      return 'PAN card number must be 10 characters';
    } else if (!RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$').hasMatch(value)) {
      return 'Invalid PAN card number';
    } else {
      return null;
    }
  }

  static String? validateDrivingLicense(String value) {
    if (value.isEmpty) {
      return 'Driving license number is required';
    } else if (value.length != 16) {
      return 'Driving license number must be 16 characters';
    } else {
      return null;
    }
  }

  static String? validateVoterID(String value) {
    if (value.isEmpty) {
      return 'Voter ID number is required';
    } else if (value.length != 10) {
      return 'Voter ID number must be 10 characters';
    } else {
      return null;
    }
  }

  static String? passwordValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter a valid password';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    } else {
      return null;
    }
  }

  static String? photoValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter a valid password';
    } else if (value.length < 3) {
      return 'Password must be at least 3 characters';
    } else {
      return null;
    }
  }

  static String? confirmPasswordValidate(String value, String password) {
    if (value.isEmpty) {
      return 'Please enter valid password';
    } else if (value != password) {
      return 'Passwords do not match';
    } else {
      return null;
    }
  }

  static String? emptyValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter valid email';
    } else {
      return null;
    }
  }

  static String? descriptionValidate(String value) {
    if (value.isEmpty) {
      return 'Please enter description';
    } else {
      return null;
    }
  }


  static bool defaultValidate(String value) {
    final regExp = RegExp(r'^[A-Za-z0-9](?!.*?\s$)[A-Za-z0-9\s]{0,9}$');
    return regExp.hasMatch(value);
  }

  static String? emailValidate(String value) {
  if (value.isEmpty) {
    return 'Please enter an email address';
  }

  // Check for uppercase letters
  // if (value != value.toLowerCase()) {
  //   return 'Please enter a valid email address';
  // }

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email address';
  }

  return null;
}

}

class DropDownValidation {
  static bool emptyValidate(String value) {
    if (value.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static String? selectionValidate(String value) {
    if (value.isEmpty) {
      return 'Please make a selection';
    } else {
      return null;
    }
  }
}

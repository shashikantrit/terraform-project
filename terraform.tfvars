environments = {
  dev = {
    subenvs = {
      natasha = {
        type    = "instance"
        size    = "xsmall"
        name    = "wks"
        db_type = "mysql"
      }
      clint = {
        type    = "instance"
        size    = "xsmall"
        name    = "wks"
        db_type = "mysql"
      }
    }
  }
  staging = {
    subenvs = {
      integration = {
        type    = "instance"
        size    = "large"
        name    = "wks"
        db_type = "mysql"
      }
      performance = {
        type    = "instance"
        size    = "large"
        name    = "wks"
        db_type = "mysql"
      }
    }
  }
  prod = {
    subenvs = {
      default = {
        type    = "instance"
        size    = "xlarge"
        name    = "wks"
        db_type = "mysql"
      }
    }
  }
}


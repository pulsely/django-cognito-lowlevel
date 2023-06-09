# django-cognito-lowlevel

**django-cognito-lowlevel** is a Django package for handling authentication with AWS Cognito in a lower level way.

This package does not make any attempts at integrating with the Django user system directly. Handler for your callback function is provided for your own workflow customizations.

---

## Installation of django-cognito-lowlevel

You can integrate **django-cognito-lowlevel** with your Django project using a Python virtual environment
Please use pip to install at your Python virtual environment:

`pip install django-cognito-lowlevel`

---

### Django settings that should and can be configured

The following variables are needed at the **settings.py** of your project.

| **Varaiable** | **Description**                                                                                                 | **Example**                                                              |
| ------------- |-----------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------|
| ``COGNITO_USER_POOL_ID`` | User pool ID of your AWS Cognito setup                                                                          | ``"eu-west-XXXXXXXX"``                                                   |
| ``COGNITO_CLIENT_ID``          | Client ID of your AWS Cognito setup                                                                             | ``"2vvdsdfr243rwefswe445rte5edr"``                                       |
| ``COGNITO_APP_CLIENT_SECRET``   | Client Secret of AWS Cognito setup                                                                              | ``1urj4uktvlmb0pps234234d6io8tipmrlu3se13fdssdf``                        |
| ``COGNITO_TOKEN_URL`` | The Token URL of your AWS Cognito setup                                                                         | ``"https://<xxxxxxxxxx>.auth.<eu-west-2>.amazoncognito.com/oauth2/token"`` |
| ``COGNIT_CALLBACK_URL_PATH`` | Call back path redirected from AWS Cognito                                                                      | ``"some-folder-of-your-choice/api/cognito/userpool/callback/"``          |
| ``COGNITO_REDIRECT_URL`` | Add some random delay of 1 to 30 seconds for each HTTP requests. Disable by default.                            | ``f"http://localhost:8000/{COGNIT_CALLBACK_URL_PATH}"``                  |
| ``COGNITO_HOST`` | The host of your AWS Cognito setup                                                                              | ``"<xxxxxxxxxx>.auth.<eu-west-2>.amazoncognito.com"``                    |
| ``COGNITO_USERPOOL_REGION`` | Default AWS Cognito region Name                                                                                 | ``"us-west-2"``                                                          |
| ``COGNITO_AUTH_SUCCESS_REDIRECT_URL`` | URL or Django URL route name of redirection upon success, after obtaining the ``access_token`` and ``id_token`` | ``"landing:index"``                                                      |
| ``COGNITO_AUTH_ERROR_REDIRECT_URL`` | URL or Django URL route name of redirection upon error                                                          | ``"landing:error"``                                                      |
| ``COGNITO_PUBLIC_KEYS_CACHE_TIMEOUT`` | Cache time of the public keys of your AWS Cognito setup                                                         | ``300``                                                                  |

---

# Credits & Acknowledgements

### Python packages dependencies

* __awslabs/aws-support-tools__  
  Decode and verify Amazon Cognito JWT tokens
  Copyright (c) Amazon Web Services - Labs
  Apache-2.0 license
  https://github.com/awslabs/aws-support-tools/tree/master/Cognito/decode-verify-jwt

* __Django__  
  Copyright (c) Django Software Foundation and individual contributors.   
  All rights reserved.   
  https://www.djangoproject.com/

* __Requests__  
  Copyright (c) Kenneth Reitz & Python Software Foundation
  Apache-2.0 license
  https://github.com/psf/requests

* __colorama__  
  Copyright Jonathan Hartley & Arnon Yaari, 2013-2020.
  BSD-3-Clause license
  https://github.com/tartley/colorama

* __python-jose__  
  Copyright (c) Michael Davis
  MIT license
  https://github.com/mpdavis/python-jose

---

## License

Apache License
Version 2.0, January 2004
http://www.apache.org/licenses/

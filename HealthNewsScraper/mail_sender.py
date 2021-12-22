
def mail_sender(email_topic: str, receiver_name: str, email_body: str, email_source_script: str,
                date_sent, source_team: str) -> str:
    """
    A function that serves as an entry point into the HTML Template.

    :param email_topic: the Topic of the Email
    :param receiver_name: the names of the receiver
    :param email_body: the main text of the email
    :param email_source_script: the script which is reporting via this email
    :param date_sent: the day this email is sent
    :param source_team: which team produced the script
    :return: mail_skeleton: a HTML string
    """
    mail_skeleton = f"""
        <!doctype html><html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"><head><title></title><!--[if !mso]><!--><meta http-equiv="X-UA-Compatible" content="IE=edge"><!--<![endif]--><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><style type="text/css">#outlook a {{ padding:0; }}
          body {{ margin:0;padding:0;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%; }}
          table, td {{ border-collapse:collapse;mso-table-lspace:0pt;mso-table-rspace:0pt; }}
          img {{ border:0;height:auto;line-height:100%; outline:none;text-decoration:none;-ms-interpolation-mode:bicubic; }}
          p {{ display:block;margin:13px 0; }}</style><!--[if mso]>
        <noscript>
        <xml>
        <o:OfficeDocumentSettings>
          <o:AllowPNG/>
          <o:PixelsPerInch>96</o:PixelsPerInch>
        </o:OfficeDocumentSettings>
        </xml>
        </noscript>
        <![endif]--><!--[if lte mso 11]>
        <style type="text/css">
          .mj-outlook-group-fix {{ width:100% !important; }}
        </style>
        <![endif]--><!--[if !mso]><!--><link href="https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700" rel="stylesheet" type="text/css"><style type="text/css">@import url(https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700);</style><!--<![endif]--><style type="text/css">@media only screen and (min-width:480px) 
        {{.mj-column-per-100 {{ width:100% !important; max-width: 100%; }}
        .mj-column-per-50 {{ width:50% !important; max-width: 50%; }}
        }}</style><style media="screen and (min-width:480px)">.moz-text-html .mj-column-per-100 {{ width:100% !important; max-width: 100%; }}
        .moz-text-html .mj-column-per-50 {{ width:50% !important; max-width: 50%; }}</style><style type="text/css">@media only screen and (max-width:480px) 
        {{table.mj-full-width-mobile {{width: 100% !important; }}
        td.mj-full-width-mobile {{ width: auto !important; }}
        }}</style><style type="text/css">@media (max-width:480px)
        {{.mobile{{
        display: none;
        }}
        }}</style></head><body style="word-spacing:normal;"><div><!--[if mso | IE]>
        <table align="center" border="0" cellpadding="0" cellspacing="0" class="" style="width:600px;" width="600" ><tr><td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;"><![endif]--><div style="margin:0px auto;max-width:600px;">
        <table align="center" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width:100%;"><tbody><tr><td style="direction:ltr;font-size:0px;padding:20px 0;text-align:center;"><!--[if mso | IE]><table role="presentation" border="0" cellpadding="0" cellspacing="0"><tr><td class="" style="vertical-align:top;width:600px;" ><![endif]--><div class="mj-column-per-100 mj-outlook-group-fix" style="font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;">
        <table border="0" cellpadding="0" cellspacing="0" role="presentation" style="vertical-align:top;" width="100%"><tbody><tr><td align="left" style="background:#00274f;font-size:0px;padding:10px 25px;word-break:break-word;">
        <table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;border-spacing:0px;" class="mj-full-width-mobile"><tbody><tr><td style="width:150px;" class="mj-full-width-mobile"><img height="auto" src="https://ehealth4everyone.com/wp-content/uploads/2015/08/ehealth_teal_green_70px.png" style="border:0;display:block;outline:none;text-decoration:none;height:auto;width:100%;font-size:13px;" width="150"></td></tr></tbody></table></td></tr><tr><td align="right" style="font-size:0px;padding:10px 25px;word-break:break-word;">
        <div style="font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:20px;line-height:1;text-align:right;color:#000000;">{email_topic}</div></td></tr><tr><td align="center" style="font-size:0px;padding:10px 25px;word-break:break-word;"><p style="border-top:solid 4px #00274f;font-size:1px;margin:0px auto;width:100%;"></p><!--[if mso | IE]>
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-top:solid 4px #00274f;font-size:1px;margin:0px auto;width:550px;" role="presentation" width="550px" ><tr><td style="height:0;line-height:0;"> &nbsp;
        </td></tr></table><![endif]--></td></tr><tr><td align="left" style="font-size:0px;padding:10px 25px;word-break:break-word;"><div style="font-family:helvetica;font-size:20px;line-height:1;text-align:left;color:#000000;">Hello {receiver_name}!</div></td></tr></tbody></table>
        </div><!--[if mso | IE]></td></tr></table><![endif]--></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></table>
        <table align="center" border="0" cellpadding="0" cellspacing="0" class="" style="width:600px;" width="600" bgcolor="#fcfcfc" ><tr><td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;"><![endif]--><div style="background:#fcfcfc;background-color:#fcfcfc;margin:0px auto;max-width:600px;">
        <table align="center" border="0" cellpadding="0" cellspacing="0" role="presentation" style="background:#fcfcfc;background-color:#fcfcfc;width:100%;"><tbody><tr><td style="direction:ltr;font-size:0px;padding:20px 0;text-align:center;"><!--[if mso | IE]><table role="presentation" border="0" cellpadding="0" cellspacing="0"><tr><td class="" style="vertical-align:top;width:600px;" ><![endif]--><div class="mj-column-per-100 mj-outlook-group-fix" style="font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;">
        <table border="0" cellpadding="0" cellspacing="0" role="presentation" style="vertical-align:top;" width="100%"><tbody><tr><td align="left" style="font-size:0px;padding:10px 25px;word-break:break-word;"><div style="font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:13px;line-height:1;text-align:left;color:#000000;">{email_body}</div></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></table><![endif]--></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></table><table align="center" border="0" cellpadding="0" cellspacing="0" class="" style="width:600px;" width="600" bgcolor="#026f90" ><tr><td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;"><![endif]--><div style="background:#026f90;background-color:#026f90;margin:0px auto;max-width:600px;">
        <table align="center" border="0" cellpadding="0" cellspacing="0" role="presentation" style="background:#026f90;background-color:#026f90;width:100%;"><tbody><tr><td style="direction:ltr;font-size:0px;padding:20px 0;text-align:center;"><!--[if mso | IE]>
        <table role="presentation" border="0" cellpadding="0" cellspacing="0"><tr><td class="" style="vertical-align:top;width:300px;" ><![endif]--><div class="mj-column-per-50 mj-outlook-group-fix" style="font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;"><table border="0" cellpadding="0" cellspacing="0" role="presentation" style="vertical-align:top;" width="100%"><tbody><tr><td align="left" class="mobile" style="font-size:0px;padding:10px 25px;word-break:break-word;">
        <table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;border-spacing:0px;"><tbody><tr><td style="width:100px;"><img height="auto" src="https://ci3.googleusercontent.com/proxy/LVvorbwLuCOmBsDXI4-plsSrBwF-ttzsYtm5jOv64dpXhyOqqYfIn57l_862wcFkEXJUhPEp6sc76CD-AP19uczZLIP64TukHFdnLcGFriKZ6e_npjDIG6IAf7aNKKxC7JaYtr5R10LWc0VwDHKpMXyTsTsegbNfFxmIvfL0Repa9H6huuCjhoWb3kC1cV5oCaIv35EcHvIpQJF-KRREfOu1oKK9GRPE0A=s0-d-e1-ft#https://d36urhup7zbd7q.cloudfront.net/4d664942-fb57-4d75-9e2b-8ae6ab94e2db/OfficeLogoFullColour.crop_433x432_68,81.preview.format_png.resize_200x.png" style="border:0;display:block;outline:none;text-decoration:none;height:auto;width:100%;font-size:13px;" width="100"></td></tr></tbody></table></td></tr></tbody></table></div><!--[if mso | IE]></td><td class="" style="vertical-align:top;width:300px;" ><![endif]--><div class="mj-column-per-50 mj-outlook-group-fix" style="font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%;">
        <table border="0" cellpadding="0" cellspacing="0" role="presentation" style="vertical-align:top;" width="100%"><tbody><tr><td align="right" style="font-size:0px;padding:10px 25px;word-break:break-word;"><div style="font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:13px;line-height:1;text-align:right;color:#000000;">Source: {email_source_script}</div></td></tr><tr><td align="right" style="font-size:0px;padding:10px 25px;word-break:break-word;"><div style="font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:13px;line-height:1;text-align:right;color:#000000;">Date: {date_sent}</div></td></tr><tr><td align="right" style="font-size:0px;padding:10px 25px;word-break:break-word;"><div style="font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:13px;line-height:1;text-align:right;color:#000000;">From {source_team}</div></td></tr><tr><td align="right" style="font-size:0px;padding:10px 25px;word-break:break-word;"><div style="font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:13px;line-height:1;text-align:right;color:#000000;">Thank you.</div></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></table><![endif]--></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></table><![endif]--></div>
        </body>
        </html>
            """

    return mail_skeleton

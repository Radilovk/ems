.class public Lcom/sun/mail/smtp/SMTPMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "SMTPMessage.java"


# static fields
.field public static final NOTIFY_DELAY:I = 0x4

.field public static final NOTIFY_FAILURE:I = 0x2

.field public static final NOTIFY_NEVER:I = -0x1

.field public static final NOTIFY_SUCCESS:I = 0x1

.field public static final RETURN_FULL:I = 0x1

.field public static final RETURN_HDRS:I = 0x2

.field private static final returnOptionString:[Ljava/lang/String;


# instance fields
.field private allow8bitMIME:Z

.field private envelopeFrom:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private notifyOptions:I

.field private returnOption:I

.field private sendPartial:Z

.field private submitter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HDRS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/smtp/SMTPMessage;->returnOptionString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;

    .line 96
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    .line 81
    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    .line 82
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    .line 83
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    .line 81
    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    .line 82
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    .line 83
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 1
    .param p1, "source"    # Ljavax/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/internet/MimeMessage;)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    .line 81
    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    .line 82
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    .line 83
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public getAllow8bitMIME()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    return v0
.end method

.method getDSNNotify()Ljava/lang/String;
    .locals 3

    .line 185
    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 188
    const-string v0, "NEVER"

    return-object v0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    :cond_2
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    and-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2c

    if-eqz v1, :cond_4

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :cond_4
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    :cond_5
    const-string v1, "DELAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getDSNRet()Ljava/lang/String;
    .locals 2

    .line 235
    sget-object v0, Lcom/sun/mail/smtp/SMTPMessage;->returnOptionString:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEnvelopeFrom()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->envelopeFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMailExtension()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyOptions()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    return v0
.end method

.method public getReturnOption()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    return v0
.end method

.method public getSendPartial()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    return v0
.end method

.method public getSubmitter()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow8bitMIME(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .line 249
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    .line 250
    return-void
.end method

.method public setEnvelopeFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->envelopeFrom:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setMailExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .line 343
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setNotifyOptions(I)V
    .locals 2
    .param p1, "options"    # I

    .line 166
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 168
    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    .line 169
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad return option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReturnOption(I)V
    .locals 2
    .param p1, "option"    # I

    .line 216
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 218
    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    .line 219
    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad return option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSendPartial(Z)V
    .locals 0
    .param p1, "partial"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    .line 274
    return-void
.end method

.method public setSubmitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "submitter"    # Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    .line 307
    return-void
.end method

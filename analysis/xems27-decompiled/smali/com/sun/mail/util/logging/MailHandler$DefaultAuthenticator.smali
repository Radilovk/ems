.class final Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;
.super Ljavax/mail/Authenticator;
.source "MailHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/util/logging/MailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultAuthenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final pass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3974
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pass"    # Ljava/lang/String;

    .line 3985
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 3986
    nop

    .line 3987
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->pass:Ljava/lang/String;

    .line 3988
    return-void
.end method


# virtual methods
.method protected final getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 3992
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->getDefaultUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->pass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

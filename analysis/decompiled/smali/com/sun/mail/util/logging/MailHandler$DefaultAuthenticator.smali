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

    .prologue
    .line 3974
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 3985
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 3986
    sget-boolean v0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3987
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->pass:Ljava/lang/String;

    .line 3988
    return-void
.end method


# virtual methods
.method protected final getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .prologue
    .line 3992
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->getDefaultUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->pass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

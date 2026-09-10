.class public Lcom/sun/mail/handlers/text_html;
.super Lcom/sun/mail/handlers/text_plain;
.source "text_html.java"


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 51
    const-class v1, Ljava/lang/String;

    .line 52
    nop

    .line 53
    nop

    .line 50
    const-string v2, "text/html"

    const-string v3, "HTML String"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/text_html;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sun/mail/handlers/text_plain;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .line 56
    sget-object v0, Lcom/sun/mail/handlers/text_html;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

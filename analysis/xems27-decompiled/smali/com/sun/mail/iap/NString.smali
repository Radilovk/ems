.class Lcom/sun/mail/iap/NString;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/sun/mail/iap/NString;->bytes:[B

    .line 413
    return-void
.end method

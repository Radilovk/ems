.class public Lcom/clj/fastble/exception/OtherException;
.super Lcom/clj/fastble/exception/BleException;
.source "OtherException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 7
    const/16 v0, 0x66

    invoke-direct {p0, v0, p1}, Lcom/clj/fastble/exception/BleException;-><init>(ILjava/lang/String;)V

    .line 8
    return-void
.end method

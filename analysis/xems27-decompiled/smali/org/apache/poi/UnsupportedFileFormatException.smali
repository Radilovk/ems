.class public abstract Lorg/apache/poi/UnsupportedFileFormatException;
.super Ljava/lang/IllegalArgumentException;
.source "UnsupportedFileFormatException.java"


# static fields
.field private static final serialVersionUID:J = -0x72ef771aecb8f1deL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

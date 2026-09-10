.class public abstract Lorg/apache/poi/OldFileFormatException;
.super Lorg/apache/poi/UnsupportedFileFormatException;
.source "OldFileFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x6cefac02f07b09a7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/poi/UnsupportedFileFormatException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

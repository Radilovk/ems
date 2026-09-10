.class public final Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
.super Ljava/io/IOException;
.source "LittleEndian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/LittleEndian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferUnderrunException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x793ff77533f56541L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    const-string v0, "buffer underrun"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

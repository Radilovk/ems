.class public final Lorg/apache/poi/util/TempFile;
.super Ljava/lang/Object;
.source "TempFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;
    }
.end annotation


# static fields
.field private static strategy:Lorg/apache/poi/util/TempFileCreationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;

    invoke-direct {v0}, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;-><init>()V

    sput-object v0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/util/TempFileCreationStrategy;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static setTempFileCreationStrategy(Lorg/apache/poi/util/TempFileCreationStrategy;)V
    .locals 2
    .param p0, "strategy"    # Lorg/apache/poi/util/TempFileCreationStrategy;

    .line 39
    if-eqz p0, :cond_0

    .line 42
    sput-object p0, Lorg/apache/poi/util/TempFile;->strategy:Lorg/apache/poi/util/TempFileCreationStrategy;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "strategy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public abstract Lorg/apache/poi/POITextExtractor;
.super Ljava/lang/Object;
.source "POITextExtractor.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected document:Lorg/apache/poi/POIDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/poi/POIDocument;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/poi/POITextExtractor;->document:Lorg/apache/poi/POIDocument;

    .line 42
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/POITextExtractor;)V
    .locals 1
    .param p1, "otherExtractor"    # Lorg/apache/poi/POITextExtractor;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lorg/apache/poi/POITextExtractor;->document:Lorg/apache/poi/POIDocument;

    iput-object v0, p0, Lorg/apache/poi/POITextExtractor;->document:Lorg/apache/poi/POIDocument;

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public abstract getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.class final Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;
.super Ljava/lang/Object;
.source "DataSpaceMapUtils.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;->val$buf:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;->val$buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getLimit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

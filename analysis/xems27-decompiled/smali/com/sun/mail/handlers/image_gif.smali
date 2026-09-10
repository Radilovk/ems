.class public Lcom/sun/mail/handlers/image_gif;
.super Ljava/lang/Object;
.source "image_gif.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 54
    const-class v1, Ljava/awt/Image;

    .line 55
    nop

    .line 56
    nop

    .line 53
    const-string v2, "image/gif"

    const-string v3, "GIF Image"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/handlers/image_gif;->myDF:Ljavax/activation/ActivationDataFlavor;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 7
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 90
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 92
    .local v1, "pos":I
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 94
    .local v2, "buf":[B
    nop

    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v4, v3

    .local v4, "count":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 107
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    .line 108
    .local v3, "tk":Ljava/awt/Toolkit;
    invoke-virtual {v3, v2, v6, v1}, Ljava/awt/Toolkit;->createImage([BII)Ljava/awt/Image;

    move-result-object v5

    return-object v5

    .line 95
    .end local v3    # "tk":Ljava/awt/Toolkit;
    :cond_0
    add-int/2addr v1, v4

    .line 96
    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 97
    array-length v3, v2

    .line 98
    .local v3, "size":I
    const/high16 v5, 0x40000

    if-ge v3, v5, :cond_1

    .line 99
    add-int/2addr v3, v3

    goto :goto_1

    .line 101
    :cond_1
    add-int/2addr v3, v5

    .line 102
    :goto_1
    new-array v5, v3, [B

    .line 103
    .local v5, "tbuf":[B
    invoke-static {v2, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object v2, v5

    goto :goto_0

    .line 96
    .end local v3    # "size":I
    .end local v5    # "tbuf":[B
    :cond_2
    goto :goto_0
.end method

.method protected getDF()Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .line 59
    sget-object v0, Lcom/sun/mail/handlers/image_gif;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public getTransferData(Ljava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "df"    # Ljava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/sun/mail/handlers/image_gif;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Lcom/sun/mail/handlers/image_gif;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 3

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0}, Lcom/sun/mail/handlers/image_gif;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    instance-of v0, p1, Ljava/awt/Image;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/mail/handlers/image_gif;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "\" DataContentHandler requires Image object, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v2, "was given object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/mail/handlers/image_gif;->getDF()Ljavax/activation/ActivationDataFlavor;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " encoding not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

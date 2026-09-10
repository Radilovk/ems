.class public Lcom/sun/mail/handlers/text_xml;
.super Lcom/sun/mail/handlers/text_plain;
.source "text_xml.java"


# instance fields
.field private final flavors:[Ljava/awt/datatransfer/DataFlavor;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sun/mail/handlers/text_plain;-><init>()V

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    .line 71
    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    const-class v3, Ljava/lang/String;

    const-string v4, "text/xml"

    const-string v5, "XML String"

    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 72
    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    const-class v3, Ljava/lang/String;

    const-string v4, "application/xml"

    .line 73
    const-string v5, "XML String"

    .line 72
    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 74
    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    const-class v3, Ljavax/xml/transform/stream/StreamSource;

    const-string v4, "text/xml"

    const-string v5, "XML"

    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 75
    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    const-class v3, Ljavax/xml/transform/stream/StreamSource;

    const-string v4, "application/xml"

    .line 76
    const-string v5, "XML"

    .line 75
    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 70
    iput-object v0, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    .line 78
    return-void
.end method

.method private isXmlType(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 159
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    const/4 v2, 0x1

    .line 166
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :cond_1
    :goto_0
    return v2

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "ex":Ljavax/mail/internet/ParseException;
    goto :goto_0

    .line 165
    .end local v1    # "ex":Ljavax/mail/internet/ParseException;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method public getTransferData(Ljava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 5
    .param p1, "df"    # Ljava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 110
    :cond_0
    :goto_1
    return-object v2

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    aget-object v0, v3, v1

    .line 101
    .local v0, "aFlavor":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v0, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_2

    .line 103
    invoke-super {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljavax/xml/transform/stream/StreamSource;

    if-ne v3, v4, :cond_0

    .line 105
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 99
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v0}, [Ljava/awt/datatransfer/DataFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_xml;->isXmlType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Ljava/io/IOException;

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid content type \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" for text/xml DCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_0
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/sun/mail/handlers/text_plain;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 155
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 124
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljavax/activation/DataSource;

    if-nez v4, :cond_2

    instance-of v4, p1, Ljavax/xml/transform/Source;

    if-nez v4, :cond_2

    .line 125
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid Object type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    const-string v6, ". XmlDCH can only convert DataSource or Source to XML."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 132
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 133
    .local v2, "result":Ljavax/xml/transform/stream/StreamResult;
    instance-of v4, p1, Ljavax/activation/DataSource;

    if-eqz v4, :cond_3

    .line 137
    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    check-cast p1, Ljavax/activation/DataSource;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 136
    invoke-virtual {v3, v4, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 142
    .end local v2    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljavax/xml/transform/TransformerException;
    new-instance v1, Ljava/io/IOException;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to run the JAXP transformer on a stream "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "ioex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 147
    throw v1

    .line 140
    .end local v0    # "ex":Ljavax/xml/transform/TransformerException;
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local v2    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v3    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    :try_start_1
    check-cast p1, Ljavax/xml/transform/Source;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v3, p1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 148
    .end local v2    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/IOException;

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to run the JAXP transformer on a stream "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v1    # "ioex":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    throw v1
.end method

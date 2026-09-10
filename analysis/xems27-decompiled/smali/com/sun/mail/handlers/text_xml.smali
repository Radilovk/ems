.class public Lcom/sun/mail/handlers/text_xml;
.super Lcom/sun/mail/handlers/text_plain;
.source "text_xml.java"


# instance fields
.field private final flavors:[Ljava/awt/datatransfer/DataFlavor;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 69
    invoke-direct {p0}, Lcom/sun/mail/handlers/text_plain;-><init>()V

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    .line 71
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    const-class v2, Ljava/lang/String;

    const-string v3, "text/xml"

    const-string v4, "XML String"

    invoke-direct {v1, v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    const-class v2, Ljava/lang/String;

    .line 73
    nop

    .line 72
    const-string v5, "application/xml"

    invoke-direct {v1, v2, v5, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    const-class v2, Ljavax/xml/transform/stream/StreamSource;

    const-string v4, "XML"

    invoke-direct {v1, v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    const-class v2, Ljavax/xml/transform/stream/StreamSource;

    .line 76
    nop

    .line 75
    invoke-direct {v1, v2, v5, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    .line 78
    return-void
.end method

.method private isXmlType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 165
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/RuntimeException;
    return v0

    .line 163
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "ex":Ljavax/mail/internet/ParseException;
    return v0
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

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 110
    .end local v0    # "i":I
    return-object v3

    .line 100
    .restart local v0    # "i":I
    :cond_0
    aget-object v1, v1, v0

    .line 101
    .local v1, "aFlavor":Ljava/awt/datatransfer/DataFlavor;
    invoke-virtual {v1, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    if-ne v2, v4, :cond_1

    .line 103
    invoke-super {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljavax/xml/transform/stream/StreamSource;

    if-ne v2, v4, :cond_2

    .line 105
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 107
    :cond_2
    return-object v3

    .line 99
    .end local v1    # "aFlavor":Ljava/awt/datatransfer/DataFlavor;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sun/mail/handlers/text_xml;->flavors:[Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v0}, [Ljava/awt/datatransfer/DataFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const-string v0, "Unable to run the JAXP transformer on a stream "

    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_xml;->isXmlType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/sun/mail/handlers/text_plain;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 122
    return-void

    .line 124
    :cond_0
    instance-of v1, p1, Ljavax/activation/DataSource;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljavax/xml/transform/Source;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Object type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, ". XmlDCH can only convert DataSource or Source to XML."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 130
    nop

    .line 132
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 133
    .local v2, "result":Ljavax/xml/transform/stream/StreamResult;
    instance-of v3, p1, Ljavax/activation/DataSource;

    if-eqz v3, :cond_3

    .line 136
    nop

    .line 137
    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    move-object v4, p1

    check-cast v4, Ljavax/activation/DataSource;

    invoke-interface {v4}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 138
    nop

    .line 136
    invoke-virtual {v1, v3, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    move-object v3, p1

    check-cast v3, Ljavax/xml/transform/Source;

    invoke-virtual {v1, v3, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v2    # "result":Ljavax/xml/transform/stream/StreamResult;
    nop

    .line 155
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/IOException;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 152
    .local v0, "ioex":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    throw v0

    .line 142
    .end local v0    # "ioex":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "ex":Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljava/io/IOException;

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 146
    .restart local v0    # "ioex":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 147
    throw v0

    .line 118
    .end local v0    # "ioex":Ljava/io/IOException;
    .end local v1    # "ex":Ljavax/xml/transform/TransformerException;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid content type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" for text/xml DCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

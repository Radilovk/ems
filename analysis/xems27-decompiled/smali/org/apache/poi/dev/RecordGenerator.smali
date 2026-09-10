.class public Lorg/apache/poi/dev/RecordGenerator;
.super Ljava/lang/Object;
.source "RecordGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateRecords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p0, "defintionsDir"    # Ljava/lang/String;
    .param p1, "recordStyleDir"    # Ljava/lang/String;
    .param p2, "destSrcPathDir"    # Ljava/lang/String;
    .param p3, "testSrcPathDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    move-object/from16 v0, p1

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "definitionsFile":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v3

    .line 74
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_record.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_type.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p2

    move-object/from16 v6, p3

    move-object/from16 v16, v1

    goto/16 :goto_2

    .line 80
    :cond_1
    :goto_1
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 81
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 82
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 83
    .local v7, "document":Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 84
    .local v8, "record":Lorg/w3c/dom/Element;
    const-string v9, "extends"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "extendstg":Ljava/lang/String;
    const-string v11, "suffix"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 86
    .local v10, "suffix":Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string v12, "name"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, "recordName":Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string v13, "package"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "packageName":Ljava/lang/String;
    const/16 v13, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 91
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "destinationPath":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "definitionsFile":Ljava/io/File;
    .local v16, "definitionsFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "destinationPathFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 94
    move-object/from16 v17, v1

    .end local v1    # "destinationPathFile":Ljava/io/File;
    .local v17, "destinationPathFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "destinationFilepath":Ljava/lang/String;
    move-object/from16 v18, v5

    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v18, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v6

    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v19, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Ljava/io/File;

    move-object/from16 v20, v7

    .end local v7    # "document":Lorg/w3c/dom/Document;
    .local v20, "document":Lorg/w3c/dom/Document;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v8

    .end local v8    # "record":Lorg/w3c/dom/Element;
    .local v21, "record":Lorg/w3c/dom/Element;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".xsl"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Lorg/apache/poi/dev/RecordGenerator;->transform(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 96
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .end local v13    # "destinationPath":Ljava/lang/String;
    .local v5, "destinationPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .end local v17    # "destinationPathFile":Ljava/io/File;
    .local v7, "destinationPathFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/Test"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_test.xsl"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "temp":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v8, v13}, Lorg/apache/poi/dev/RecordGenerator;->transform(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 106
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Generated test: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    .end local v2    # "temp":Ljava/lang/String;
    goto :goto_2

    .line 108
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipped test generation: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 74
    .end local v5    # "destinationPath":Ljava/lang/String;
    .end local v7    # "destinationPathFile":Ljava/io/File;
    .end local v9    # "extendstg":Ljava/lang/String;
    .end local v10    # "suffix":Ljava/lang/String;
    .end local v11    # "recordName":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v16    # "definitionsFile":Ljava/io/File;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v20    # "document":Lorg/w3c/dom/Document;
    .end local v21    # "record":Lorg/w3c/dom/Element;
    .local v1, "definitionsFile":Ljava/io/File;
    :cond_3
    move-object/from16 v14, p2

    move-object/from16 v6, p3

    move-object/from16 v16, v1

    .line 72
    .end local v1    # "definitionsFile":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .restart local v16    # "definitionsFile":Ljava/io/File;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 112
    .end local v3    # "i":I
    .end local v16    # "definitionsFile":Ljava/io/File;
    .restart local v1    # "definitionsFile":Ljava/io/File;
    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const-string v0, "org.apache.poi.generator.FieldIterator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  java org.apache.poi.hssf.util.RecordGenerator RECORD_DEFINTIONS RECORD_STYLES DEST_SRC_PATH TEST_SRC_PATH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/dev/RecordGenerator;->generateRecords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void
.end method

.method private static transform(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "in"    # Ljava/io/File;
    .param p1, "out"    # Ljava/io/File;
    .param p2, "xslt"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 130
    .local v0, "r":Ljava/io/Reader;
    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 131
    .local v1, "ss":Ljavax/xml/transform/stream/StreamSource;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 135
    .local v2, "tf":Ljavax/xml/transform/TransformerFactory;
    :try_start_0
    invoke-virtual {v2, v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v3
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .local v3, "t":Ljavax/xml/transform/Transformer;
    nop

    .line 142
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 143
    .local v4, "p":Ljava/util/Properties;
    const-string v5, "method"

    const-string v6, "text"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperties(Ljava/util/Properties;)V

    .line 145
    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 146
    .local v5, "result":Ljavax/xml/transform/Result;
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v6, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v6, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 147
    return-void

    .line 137
    .end local v3    # "t":Ljavax/xml/transform/Transformer;
    .end local v4    # "p":Ljava/util/Properties;
    .end local v5    # "result":Ljavax/xml/transform/Result;
    :catch_0
    move-exception v3

    const/4 v4, 0x0

    .line 139
    .local v3, "ex":Ljavax/xml/transform/TransformerException;
    .local v4, "t":Ljavax/xml/transform/Transformer;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error compiling XSL style sheet "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    throw v3
.end method

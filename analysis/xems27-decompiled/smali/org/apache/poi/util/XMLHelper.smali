.class public final Lorg/apache/poi/util/XMLHelper;
.super Ljava/lang/Object;
.source "XMLHelper.java"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lorg/apache/poi/util/XMLHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/XMLHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 4

    .line 35
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 36
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 37
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 38
    const-string v2, "http://xml.org/sax/features/external-general-entities"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 39
    const-string v2, "http://xml.org/sax/features/external-parameter-entities"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 40
    const-string v2, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 41
    const-string v2, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/XMLHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    .line 42
    return-object v0
.end method

.method private static trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "documentBuilderFactory"    # Ljavax/xml/parsers/DocumentBuilderFactory;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 47
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "ame":Ljava/lang/AbstractMethodError;
    sget-object v2, Lorg/apache/poi/util/XMLHelper;->logger:Lorg/apache/poi/util/POILogger;

    const-string v3, "Cannot set SAX feature because outdated XML parser in classpath"

    invoke-virtual {v2, v0, v3, p1, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 48
    .end local v1    # "ame":Ljava/lang/AbstractMethodError;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/poi/util/XMLHelper;->logger:Lorg/apache/poi/util/POILogger;

    const-string v3, "SAX Feature unsupported"

    invoke-virtual {v2, v0, v3, p1, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 53
    :goto_1
    return-void
.end method

.class final Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;
.super Ljava/lang/Object;
.source "StaticFontMetrics.java"


# static fields
.field private static fontDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/FontDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static fontMetricsProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontDetails(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/FontDetails;
    .locals 11
    .param p0, "font"    # Ljava/awt/Font;

    .prologue
    .line 53
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    if-nez v8, :cond_3

    .line 54
    const/4 v5, 0x0

    .line 56
    .local v5, "metricsIn":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    sput-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v7, 0x0

    .line 62
    .local v7, "propFileName":Ljava/lang/String;
    :try_start_1
    const-string v8, "font.metrics.filename"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 66
    :goto_0
    if-eqz v7, :cond_8

    .line 67
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 69
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "font_metrics.properties not found at path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "propFileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not load font metrics: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_0

    .line 86
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 88
    :cond_0
    :goto_1
    throw v8

    .line 72
    .restart local v1    # "file":Ljava/io/File;
    .restart local v7    # "propFileName":Ljava/lang/String;
    :cond_1
    :try_start_5
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v5    # "metricsIn":Ljava/io/InputStream;
    .local v6, "metricsIn":Ljava/io/InputStream;
    move-object v5, v6

    .line 80
    .end local v1    # "file":Ljava/io/File;
    .end local v6    # "metricsIn":Ljava/io/InputStream;
    .restart local v5    # "metricsIn":Ljava/io/InputStream;
    :cond_2
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-virtual {v8, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    if-eqz v5, :cond_3

    .line 86
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 94
    .end local v5    # "metricsIn":Ljava/io/InputStream;
    .end local v7    # "propFileName":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "fontName":Ljava/lang/String;
    const-string v4, ""

    .line 100
    .local v4, "fontStyle":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/awt/Font;->isPlain()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "plain"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    :cond_4
    invoke-virtual {p0}, Ljava/awt/Font;->isBold()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bold"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_5
    invoke-virtual {p0}, Ljava/awt/Font;->isItalic()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "italic"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_6
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    :cond_7
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    .line 118
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-static {v3, v8}, Lorg/apache/poi/hssf/usermodel/FontDetails;->create(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/hssf/usermodel/FontDetails;

    move-result-object v2

    .line 119
    .local v2, "fontDetails":Lorg/apache/poi/hssf/usermodel/FontDetails;
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v2    # "fontDetails":Lorg/apache/poi/hssf/usermodel/FontDetails;
    :goto_3
    return-object v2

    .line 75
    .end local v3    # "fontName":Ljava/lang/String;
    .end local v4    # "fontStyle":Ljava/lang/String;
    .restart local v5    # "metricsIn":Ljava/io/InputStream;
    .restart local v7    # "propFileName":Ljava/lang/String;
    :cond_8
    :try_start_7
    const-class v8, Lorg/apache/poi/hssf/usermodel/FontDetails;

    const-string v9, "/font_metrics.properties"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    new-instance v8, Ljava/io/FileNotFoundException;

    const-string v9, "font_metrics.properties not found in classpath"

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 122
    .end local v5    # "metricsIn":Ljava/io/InputStream;
    .end local v7    # "propFileName":Ljava/lang/String;
    .restart local v3    # "fontName":Ljava/lang/String;
    .restart local v4    # "fontStyle":Ljava/lang/String;
    :cond_9
    sget-object v8, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hssf/usermodel/FontDetails;

    move-object v2, v8

    goto :goto_3

    .line 87
    .end local v3    # "fontName":Ljava/lang/String;
    .end local v4    # "fontStyle":Ljava/lang/String;
    .restart local v5    # "metricsIn":Ljava/io/InputStream;
    .restart local v7    # "propFileName":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto/16 :goto_2

    .end local v7    # "propFileName":Ljava/lang/String;
    :catch_2
    move-exception v9

    goto/16 :goto_1

    .line 63
    .restart local v7    # "propFileName":Ljava/lang/String;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.class final Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;
.super Ljava/lang/Object;
.source "StaticFontMetrics.java"


# static fields
.field private static fontDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontDetails(Ljava/awt/Font;)Lorg/apache/poi/hssf/usermodel/FontDetails;
    .locals 6
    .param p0, "font"    # Ljava/awt/Font;

    .line 53
    sget-object v0, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    if-nez v0, :cond_4

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "metricsIn":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "propFileName":Ljava/lang/String;
    :try_start_1
    const-string v2, "font.metrics.filename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 64
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 66
    :goto_0
    if-eqz v1, :cond_1

    .line 67
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 73
    .end local v2    # "file":Ljava/io/File;
    goto :goto_1

    .line 69
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "font_metrics.properties not found at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "metricsIn":Ljava/io/InputStream;
    .end local p0    # "font":Ljava/awt/Font;
    throw v3

    .line 75
    .end local v2    # "file":Ljava/io/File;
    .restart local v0    # "metricsIn":Ljava/io/InputStream;
    .restart local p0    # "font":Ljava/awt/Font;
    :cond_1
    const-class v2, Lorg/apache/poi/hssf/usermodel/FontDetails;

    const-string v3, "/font_metrics.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 76
    if-eqz v0, :cond_2

    .line 80
    :goto_1
    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v1    # "propFileName":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 86
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 88
    :goto_2
    goto :goto_5

    .line 87
    :catch_1
    move-exception v1

    goto :goto_2

    .line 77
    .restart local v1    # "propFileName":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "font_metrics.properties not found in classpath"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "metricsIn":Ljava/io/InputStream;
    .end local p0    # "font":Ljava/awt/Font;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    .end local v1    # "propFileName":Ljava/lang/String;
    .restart local v0    # "metricsIn":Ljava/io/InputStream;
    .restart local p0    # "font":Ljava/awt/Font;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 81
    :catch_2
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load font metrics: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "metricsIn":Ljava/io/InputStream;
    .end local p0    # "font":Ljava/awt/Font;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "metricsIn":Ljava/io/InputStream;
    .restart local p0    # "font":Ljava/awt/Font;
    :goto_3
    if-eqz v0, :cond_3

    .line 86
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 88
    goto :goto_4

    .line 87
    :catch_3
    move-exception v2

    .line 88
    :cond_3
    :goto_4
    throw v1

    .line 94
    .end local v0    # "metricsIn":Ljava/io/InputStream;
    :cond_4
    :goto_5
    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "fontName":Ljava/lang/String;
    const-string v1, ""

    .line 100
    .local v1, "fontStyle":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/awt/Font;->isPlain()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "plain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_5
    invoke-virtual {p0}, Ljava/awt/Font;->isBold()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_6
    invoke-virtual {p0}, Ljava/awt/Font;->isItalic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "italic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_7
    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_8
    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 118
    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontMetricsProps:Ljava/util/Properties;

    invoke-static {v0, v2}, Lorg/apache/poi/hssf/usermodel/FontDetails;->create(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/hssf/usermodel/FontDetails;

    move-result-object v2

    .line 119
    .local v2, "fontDetails":Lorg/apache/poi/hssf/usermodel/FontDetails;
    sget-object v3, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object v2

    .line 122
    .end local v2    # "fontDetails":Lorg/apache/poi/hssf/usermodel/FontDetails;
    :cond_9
    sget-object v2, Lorg/apache/poi/hssf/usermodel/StaticFontMetrics;->fontDetailsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/FontDetails;

    return-object v2
.end method

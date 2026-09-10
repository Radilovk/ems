.class public Lorg/apache/poi/util/FontMetricsDumper;
.super Ljava/lang/Object;
.source "FontMetricsDumper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v1, v0

    .line 34
    .local v1, "props":Ljava/util/Properties;
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getAllFonts()[Ljava/awt/Font;

    move-result-object v2

    .line 35
    .local v2, "allFonts":[Ljava/awt/Font;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 37
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "fontName":Ljava/lang/String;
    new-instance v4, Ljava/awt/Font;

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 40
    .local v4, "font":Ljava/awt/Font;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/awt/Toolkit;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v5

    .line 41
    .local v5, "fontMetrics":Ljava/awt/FontMetrics;
    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v6

    .line 43
    .local v6, "fontHeight":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".height"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v7, "characters":Ljava/lang/StringBuffer;
    const/16 v9, 0x61

    .local v9, "c":C
    :goto_1
    const/16 v10, 0x7a

    const-string v11, ", "

    if-gt v9, v10, :cond_0

    .line 47
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    add-int/lit8 v10, v9, 0x1

    int-to-char v9, v10

    goto :goto_1

    .line 49
    .end local v9    # "c":C
    :cond_0
    const/16 v9, 0x41

    .restart local v9    # "c":C
    :goto_2
    const/16 v12, 0x5a

    if-gt v9, v12, :cond_1

    .line 51
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v12, v9, 0x1

    int-to-char v9, v12

    goto :goto_2

    .line 53
    .end local v9    # "c":C
    :cond_1
    const/16 v9, 0x30

    .restart local v9    # "c":C
    :goto_3
    const/16 v13, 0x39

    if-gt v9, v13, :cond_2

    .line 55
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v13, v9, 0x1

    int-to-char v9, v13

    goto :goto_3

    .line 57
    .end local v9    # "c":C
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v9, "widths":Ljava/lang/StringBuffer;
    const/16 v14, 0x61

    .local v14, "c":C
    :goto_4
    if-gt v14, v10, :cond_3

    .line 60
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object v16

    aget v10, v16, v14

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v10, v14, 0x1

    int-to-char v14, v10

    const/16 v10, 0x7a

    goto :goto_4

    .line 62
    .end local v14    # "c":C
    :cond_3
    const/16 v10, 0x41

    .local v10, "c":C
    :goto_5
    if-gt v10, v12, :cond_4

    .line 64
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object v15

    aget v15, v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    add-int/lit8 v14, v10, 0x1

    int-to-char v10, v14

    goto :goto_5

    .line 66
    .end local v10    # "c":C
    :cond_4
    const/16 v10, 0x30

    .restart local v10    # "c":C
    :goto_6
    if-gt v10, v13, :cond_5

    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/awt/FontMetrics;->getWidths()[I

    move-result-object v14

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    add-int/lit8 v12, v10, 0x1

    int-to-char v10, v12

    goto :goto_6

    .line 70
    .end local v10    # "c":C
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".characters"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".widths"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .end local v3    # "fontName":Ljava/lang/String;
    .end local v4    # "font":Ljava/awt/Font;
    .end local v5    # "fontMetrics":Ljava/awt/FontMetrics;
    .end local v6    # "fontHeight":I
    .end local v7    # "characters":Ljava/lang/StringBuffer;
    .end local v9    # "widths":Ljava/lang/StringBuffer;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "font_metrics.properties"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 77
    .local v3, "fileOut":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v0, "Font Metrics"

    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 82
    nop

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.class public Lorg/apache/poi/hssf/usermodel/FontDetails;
.super Ljava/lang/Object;
.source "FontDetails.java"


# instance fields
.field private _fontName:Ljava/lang/String;

.field private _height:I

.field private final charWidths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "height"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_fontName:Ljava/lang/String;

    .line 43
    iput p2, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_height:I

    .line 44
    return-void
.end method

.method protected static buildFontCharactersProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fontName"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fontName"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".height"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static buildFontWidthsProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fontName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".widths"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/poi/hssf/usermodel/FontDetails;
    .locals 11
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontMetricsProps"    # Ljava/util/Properties;

    .prologue
    const/4 v9, -0x1

    .line 103
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontHeightProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "heightStr":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontWidthsProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "widthsStr":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/FontDetails;->buildFontCharactersProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "charactersStr":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The supplied FontMetrics doesn\'t know about the font \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', so we can\'t use it. Please add it to your font metrics file (see StaticFontMetrics.getFontDetails"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 114
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 115
    .local v3, "height":I
    new-instance v2, Lorg/apache/poi/hssf/usermodel/FontDetails;

    invoke-direct {v2, p0, v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v2, "d":Lorg/apache/poi/hssf/usermodel/FontDetails;
    const-string v8, ","

    invoke-static {v0, v8, v9}, Lorg/apache/poi/hssf/usermodel/FontDetails;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "charactersStrArray":[Ljava/lang/String;
    const-string v8, ","

    invoke-static {v6, v8, v9}, Lorg/apache/poi/hssf/usermodel/FontDetails;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "widthsStrArray":[Ljava/lang/String;
    array-length v8, v1

    array-length v9, v7

    if-eq v8, v9, :cond_2

    .line 119
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of characters does not number of widths for font "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v7

    if-ge v5, v8, :cond_4

    .line 122
    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 123
    aget-object v8, v1, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/apache/poi/hssf/usermodel/FontDetails;->addChar(CI)V

    .line 120
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 125
    :cond_4
    return-object v2
.end method

.method private static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v6, -0x1

    .line 150
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v4, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 152
    .local v3, "listSize":I
    if-eq p2, v6, :cond_0

    if-le v3, p2, :cond_0

    .line 153
    move v3, p2

    .line 154
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    .line 155
    .local v2, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    if-eq p2, v6, :cond_4

    add-int/lit8 v5, v3, -0x1

    if-ne v1, v5, :cond_4

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v6, v3, v1

    mul-int/2addr v5, v6

    div-int/2addr v5, v3

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 160
    .local v0, "buf":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 172
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_3
    return-object v2

    .line 169
    :cond_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addChar(CI)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "width"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public addChars([C[I)V
    .locals 4
    .param p1, "characters"    # [C
    .param p2, "widths"    # [I

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public getCharWidth(C)I
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/16 v3, 0x57

    .line 68
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->charWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, "widthInteger":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 70
    if-ne v3, p1, :cond_0

    const/4 v1, 0x0

    .line 72
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/FontDetails;->getCharWidth(C)I

    move-result v1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/FontDetails;->_height:I

    return v0
.end method

.method public getStringWidth(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "width":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/FontDetails;->getCharWidth(C)I

    move-result v2

    add-int/2addr v1, v2

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return v1
.end method

.class public final Lorg/apache/poi/ss/usermodel/BuiltinFormats;
.super Ljava/lang/Object;
.source "BuiltinFormats.java"


# static fields
.field public static final FIRST_USER_DEFINED_FORMAT_INDEX:I = 0xa4

.field private static final _formats:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const-string v4, "General"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 106
    const/4 v3, 0x1

    const-string v4, "0"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 107
    const/4 v3, 0x2

    const-string v4, "0.00"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 108
    const/4 v3, 0x3

    const-string v4, "#,##0"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 109
    const/4 v3, 0x4

    const-string v4, "#,##0.00"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 110
    const/4 v3, 0x5

    const-string v4, "\"$\"#,##0_);(\"$\"#,##0)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 111
    const/4 v3, 0x6

    const-string v4, "\"$\"#,##0_);[Red](\"$\"#,##0)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 112
    const/4 v3, 0x7

    const-string v4, "\"$\"#,##0.00_);(\"$\"#,##0.00)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 113
    const/16 v3, 0x8

    const-string v4, "\"$\"#,##0.00_);[Red](\"$\"#,##0.00)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 114
    const/16 v3, 0x9

    const-string v4, "0%"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 115
    const/16 v3, 0xa

    const-string v4, "0.00%"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 116
    const/16 v3, 0xb

    const-string v4, "0.00E+00"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 117
    const/16 v3, 0xc

    const-string v4, "# ?/?"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 118
    const/16 v3, 0xd

    const-string v4, "# ??/??"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 119
    const/16 v3, 0xe

    const-string v4, "m/d/yy"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 120
    const/16 v3, 0xf

    const-string v4, "d-mmm-yy"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 121
    const/16 v3, 0x10

    const-string v4, "d-mmm"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 122
    const/16 v3, 0x11

    const-string v4, "mmm-yy"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 123
    const/16 v3, 0x12

    const-string v4, "h:mm AM/PM"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 124
    const/16 v3, 0x13

    const-string v4, "h:mm:ss AM/PM"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 125
    const/16 v3, 0x14

    const-string v4, "h:mm"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 126
    const/16 v3, 0x15

    const-string v4, "h:mm:ss"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 127
    const/16 v3, 0x16

    const-string v4, "m/d/yy h:mm"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 130
    const/16 v0, 0x17

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x24

    if-gt v0, v3, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reserved-0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const/16 v3, 0x25

    const-string v4, "#,##0_);(#,##0)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 136
    const/16 v3, 0x26

    const-string v4, "#,##0_);[Red](#,##0)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 137
    const/16 v3, 0x27

    const-string v4, "#,##0.00_);(#,##0.00)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 138
    const/16 v3, 0x28

    const-string v4, "#,##0.00_);[Red](#,##0.00)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 139
    const/16 v3, 0x29

    const-string v4, "_(\"$\"* #,##0_);_(\"$\"* (#,##0);_(\"$\"* \"-\"_);_(@_)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 140
    const/16 v3, 0x2a

    const-string v4, "_(* #,##0_);_(* (#,##0);_(* \"-\"_);_(@_)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 141
    const/16 v3, 0x2b

    const-string v4, "_(* #,##0.00_);_(* (#,##0.00);_(* \"-\"??_);_(@_)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 142
    const/16 v3, 0x2c

    const-string v4, "_(\"$\"* #,##0.00_);_(\"$\"* (#,##0.00);_(\"$\"* \"-\"??_);_(@_)"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 143
    const/16 v3, 0x2d

    const-string v4, "mm:ss"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 144
    const/16 v3, 0x2e

    const-string v4, "[h]:mm:ss"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 145
    const/16 v3, 0x2f

    const-string v4, "mm:ss.0"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 146
    const/16 v3, 0x30

    const-string v4, "##0.0E+0"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 147
    const/16 v3, 0x31

    const-string v4, "@"

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 148
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 149
    .local v2, "ss":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    sput-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getBuiltinFormat(Ljava/lang/String;)I
    .locals 3
    .param p0, "pFmt"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v2, "TEXT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v0, "@"

    .line 207
    .local v0, "fmt":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 208
    sget-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 204
    .end local v0    # "fmt":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .restart local v0    # "fmt":Ljava/lang/String;
    goto :goto_0

    .line 207
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public static getBuiltinFormat(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 185
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getBuiltinFormats()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-object v1
.end method

.method private static putFormat(Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

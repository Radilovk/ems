.class public final Lorg/apache/poi/ss/usermodel/BuiltinFormats;
.super Ljava/lang/Object;
.source "BuiltinFormats.java"


# static fields
.field public static final FIRST_USER_DEFINED_FORMAT_INDEX:I = 0xa4

.field private static final _formats:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "General"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 106
    const/4 v1, 0x1

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 107
    const/4 v1, 0x2

    const-string v2, "0.00"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 108
    const/4 v1, 0x3

    const-string v2, "#,##0"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 109
    const/4 v1, 0x4

    const-string v2, "#,##0.00"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 110
    const/4 v1, 0x5

    const-string v2, "\"$\"#,##0_);(\"$\"#,##0)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 111
    const/4 v1, 0x6

    const-string v2, "\"$\"#,##0_);[Red](\"$\"#,##0)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 112
    const/4 v1, 0x7

    const-string v2, "\"$\"#,##0.00_);(\"$\"#,##0.00)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 113
    const/16 v1, 0x8

    const-string v2, "\"$\"#,##0.00_);[Red](\"$\"#,##0.00)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 114
    const/16 v1, 0x9

    const-string v2, "0%"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 115
    const/16 v1, 0xa

    const-string v2, "0.00%"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 116
    const/16 v1, 0xb

    const-string v2, "0.00E+00"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 117
    const/16 v1, 0xc

    const-string v2, "# ?/?"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 118
    const/16 v1, 0xd

    const-string v2, "# ??/??"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 119
    const/16 v1, 0xe

    const-string v2, "m/d/yy"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 120
    const/16 v1, 0xf

    const-string v2, "d-mmm-yy"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 121
    const/16 v1, 0x10

    const-string v2, "d-mmm"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 122
    const/16 v1, 0x11

    const-string v2, "mmm-yy"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 123
    const/16 v1, 0x12

    const-string v2, "h:mm AM/PM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 124
    const/16 v1, 0x13

    const-string v2, "h:mm:ss AM/PM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 125
    const/16 v1, 0x14

    const-string v2, "h:mm"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 126
    const/16 v1, 0x15

    const-string v2, "h:mm:ss"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 127
    const/16 v1, 0x16

    const-string v2, "m/d/yy h:mm"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 130
    const/16 v1, 0x17

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x24

    if-gt v1, v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reserved-0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x25

    const-string v2, "#,##0_);(#,##0)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 136
    const/16 v1, 0x26

    const-string v2, "#,##0_);[Red](#,##0)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 137
    const/16 v1, 0x27

    const-string v2, "#,##0.00_);(#,##0.00)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 138
    const/16 v1, 0x28

    const-string v2, "#,##0.00_);[Red](#,##0.00)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 139
    const/16 v1, 0x29

    const-string v2, "_(\"$\"* #,##0_);_(\"$\"* (#,##0);_(\"$\"* \"-\"_);_(@_)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 140
    const/16 v1, 0x2a

    const-string v2, "_(* #,##0_);_(* (#,##0);_(* \"-\"_);_(@_)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 141
    const/16 v1, 0x2b

    const-string v2, "_(* #,##0.00_);_(* (#,##0.00);_(* \"-\"??_);_(@_)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 142
    const/16 v1, 0x2c

    const-string v2, "_(\"$\"* #,##0.00_);_(\"$\"* (#,##0.00);_(\"$\"* \"-\"??_);_(@_)"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 143
    const/16 v1, 0x2d

    const-string v2, "mm:ss"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 144
    const/16 v1, 0x2e

    const-string v2, "[h]:mm:ss"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 145
    const/16 v1, 0x2f

    const-string v2, "mm:ss.0"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 146
    const/16 v1, 0x30

    const-string v2, "##0.0E+0"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 147
    const/16 v1, 0x31

    const-string v2, "@"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->putFormat(Ljava/util/List;ILjava/lang/String;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 149
    .local v1, "ss":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    sput-object v1, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    .line 151
    .end local v0    # "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "ss":[Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll()[Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getBuiltinFormat(Ljava/lang/String;)I
    .locals 4
    .param p0, "pFmt"    # Ljava/lang/String;

    .line 201
    const-string v0, "TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "@"

    .local v0, "fmt":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "fmt":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 207
    .restart local v0    # "fmt":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 208
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    return v1

    .line 207
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public static getBuiltinFormat(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .line 185
    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    aget-object v0, v0, p0

    return-object v0

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBuiltinFormats()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static putFormat(Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 153
    .local p0, "m":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 156
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

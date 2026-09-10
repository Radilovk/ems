.class public final enum Lorg/apache/poi/ss/usermodel/FormulaError;
.super Ljava/lang/Enum;
.source "FormulaError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FormulaError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NA:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum REF:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

.field private static bmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field

.field private static imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field

.field private static smap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final longType:I

.field private final repr:Ljava/lang/String;

.field private final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const-string v3, "#NULL!"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "DIV0"

    const/4 v3, 0x1

    const/4 v4, 0x7

    const-string v5, "#DIV/0!"

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 50
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "VALUE"

    const/4 v5, 0x2

    const/16 v6, 0xf

    const-string v7, "#VALUE!"

    invoke-direct {v0, v1, v5, v6, v7}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 60
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "REF"

    const/4 v6, 0x3

    const/16 v7, 0x17

    const-string v8, "#REF!"

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 70
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "NAME"

    const/4 v7, 0x4

    const/16 v8, 0x1d

    const-string v9, "#NAME?"

    invoke-direct {v0, v1, v7, v8, v9}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 84
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "NUM"

    const/4 v8, 0x5

    const/16 v9, 0x24

    const-string v10, "#NUM!"

    invoke-direct {v0, v1, v8, v9, v10}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 96
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "NA"

    const/4 v9, 0x6

    const/16 v10, 0x2a

    const-string v11, "#N/A"

    invoke-direct {v0, v1, v9, v10, v11}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 107
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "CIRCULAR_REF"

    const/16 v10, -0x3c

    const-string v11, "~CIRCULAR~REF~"

    invoke-direct {v0, v1, v4, v10, v11}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 112
    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v1, "FUNCTION_NOT_IMPLEMENTED"

    const/16 v10, 0x8

    const/16 v11, -0x1e

    const-string v12, "~FUNCTION~NOT~IMPLEMENTED~"

    invoke-direct {v0, v1, v10, v11, v12}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 27
    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/FormulaError;

    sget-object v11, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v11, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v2, v1, v4

    aput-object v0, v1, v10

    sput-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->$VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    .line 148
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FormulaError;->values()[Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FormulaError;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 149
    .local v3, "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    sget-object v4, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v4, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v4, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v3    # "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/FormulaError;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # I
    .param p4, "repr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->type:B

    .line 120
    iput p3, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->longType:I

    .line 121
    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->repr:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 4
    .param p0, "type"    # B

    .line 164
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 165
    .local v0, "err":Lorg/apache/poi/ss/usermodel/FormulaError;
    if-eqz v0, :cond_0

    .line 166
    return-object v0

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 4
    .param p0, "type"    # I

    .line 169
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 170
    .local v0, "err":Lorg/apache/poi/ss/usermodel/FormulaError;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    int-to-byte v2, p0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 171
    :cond_0
    if-eqz v0, :cond_1

    .line 172
    return-object v0

    .line 171
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 4
    .param p0, "code"    # Ljava/lang/String;

    .line 176
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 177
    .local v0, "err":Lorg/apache/poi/ss/usermodel/FormulaError;
    if-eqz v0, :cond_0

    .line 178
    return-object v0

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final isValidCode(I)Z
    .locals 6
    .param p0, "errorCode"    # I

    .line 156
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FormulaError;->values()[Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FormulaError;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 157
    .local v3, "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, p0, :cond_0

    return v5

    .line 158
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v4

    if-ne v4, p0, :cond_1

    return v5

    .line 156
    .end local v3    # "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/FormulaError;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->$VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FormulaError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FormulaError;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 128
    iget-byte v0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->type:B

    return v0
.end method

.method public getLongCode()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->longType:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->repr:Ljava/lang/String;

    return-object v0
.end method

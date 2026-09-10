.class public final Lorg/apache/poi/ss/formula/ptg/AttrPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "AttrPtg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/ptg/AttrPtg$SpaceType;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x4

.field public static final SUM:Lorg/apache/poi/ss/formula/ptg/AttrPtg;

.field private static final baxcel:Lorg/apache/poi/util/BitField;

.field private static final optiChoose:Lorg/apache/poi/util/BitField;

.field private static final optiIf:Lorg/apache/poi/util/BitField;

.field private static final optiSkip:Lorg/apache/poi/util/BitField;

.field private static final optiSum:Lorg/apache/poi/util/BitField;

.field private static final semiVolatile:Lorg/apache/poi/util/BitField;

.field public static final sid:B = 0x19t

.field private static final space:Lorg/apache/poi/util/BitField;


# instance fields
.field private final _chooseFuncOffset:I

.field private final _data:S

.field private final _jumpTable:[I

.field private final _options:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    .line 47
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    .line 48
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    .line 49
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    .line 50
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    .line 51
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    .line 52
    const/16 v1, 0x40

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    .line 54
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    sput-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    return-void
.end method

.method private constructor <init>(II[II)V
    .locals 1
    .param p1, "options"    # I
    .param p2, "data"    # I
    .param p3, "jt"    # [I
    .param p4, "chooseFuncOffset"    # I

    .line 94
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    .line 95
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    .line 96
    int-to-short v0, p2

    iput-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    .line 97
    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    .line 98
    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 77
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    .line 78
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    .line 79
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    .line 80
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    .line 82
    .local v0, "nCases":I
    new-array v1, v0, [I

    .line 83
    .local v1, "jumpTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 84
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    aput v3, v1, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    .line 87
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    .line 88
    .end local v0    # "nCases":I
    .end local v1    # "jumpTable":[I
    goto :goto_1

    .line 89
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    .line 93
    :goto_1
    return-void
.end method

.method public static createIf(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 4
    .param p0, "dist"    # I

    .line 115
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v0
.end method

.method public static createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 4
    .param p0, "dist"    # I

    .line 122
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v0
.end method

.method public static createSpace(II)Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 5
    .param p0, "type"    # I
    .param p1, "count"    # I

    .line 106
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 107
    .local v0, "data":I
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v1
.end method

.method public static getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .locals 5

    .line 126
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(II[II)V

    return-object v0
.end method

.method private isBaxcel()Z
    .locals 2

    .line 151
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getChooseFuncOffset()I
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    if-eqz v0, :cond_0

    .line 168
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    return v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not tAttrChoose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()S
    .locals 1

    .line 159
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    return v0
.end method

.method public getJumpTable()[I
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getNumberOfOperands()I
    .locals 1

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 213
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0

    .line 215
    :cond_0
    return v1
.end method

.method public getType()I
    .locals 1

    .line 236
    const/4 v0, -0x1

    return v0
.end method

.method public isOptimizedChoose()Z
    .locals 2

    .line 139
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isOptimizedIf()Z
    .locals 2

    .line 135
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSemiVolatile()Z
    .locals 2

    .line 131
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSkip()Z
    .locals 2

    .line 146
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSpace()Z
    .locals 2

    .line 155
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSum()Z
    .locals 2

    .line 143
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 3

    .line 240
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->semiVolatile:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "ATTR(semiVolatile)"

    return-object v0

    .line 243
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "IF"

    return-object v0

    .line 246
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiChoose:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const-string v0, "CHOOSE"

    return-object v0

    .line 249
    :cond_2
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 250
    return-object v1

    .line 252
    :cond_3
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSum:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    const-string v0, "SUM"

    return-object v0

    .line 255
    :cond_4
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->baxcel:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    const-string v0, "ATTR(baxcel)"

    return-object v0

    .line 258
    :cond_5
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    return-object v1

    .line 261
    :cond_6
    const-string v0, "UNKNOWN ATTRIBUTE"

    return-object v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "operands"    # [Ljava/lang/String;

    .line 219
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->space:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    aget-object v0, p1, v1

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiIf:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const-string v2, ")"

    const-string v3, "("

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->optiSkip:Lorg/apache/poi/util/BitField;

    iget-byte v4, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-virtual {v0, v4}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 173
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSemiVolatile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "space count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "if dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    const-string v1, "choose nCases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const-string v1, "skip dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 189
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    const-string v1, "sum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 191
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isBaxcel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 192
    const-string v1, "assign "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_6
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 199
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 200
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 201
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_data:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 202
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_jumpTable:[I

    .line 203
    .local v0, "jt":[I
    if-eqz v0, :cond_1

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 205
    aget v2, v0, v1

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->_chooseFuncOffset:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 209
    :cond_1
    return-void
.end method

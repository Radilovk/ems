.class public Lorg/apache/poi/ddf/EscherColorRef;
.super Ljava/lang/Object;
.source "EscherColorRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;,
        Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAG_BLUE:Lorg/apache/poi/util/BitField;

.field private static final FLAG_GREEN:Lorg/apache/poi/util/BitField;

.field private static final FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

.field private static final FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

.field private static final FLAG_RED:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

.field private static final FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;


# instance fields
.field colorRef:I

.field opid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    nop

    .line 116
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x10000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    .line 123
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x8000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    .line 130
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x4000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    .line 137
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x2000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    .line 144
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0x1000000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    .line 150
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/high16 v1, 0xff0000

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_BLUE:Lorg/apache/poi/util/BitField;

    .line 156
    new-instance v0, Lorg/apache/poi/util/BitField;

    const v1, 0xff00

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    .line 162
    new-instance v0, Lorg/apache/poi/util/BitField;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lorg/apache/poi/util/BitField;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "colorRef"    # I

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 165
    iput p1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 166
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "source"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 169
    nop

    .line 171
    move v0, p2

    .line 172
    .local v0, "offset":I
    const/4 v1, 0x6

    if-ne p3, v1, :cond_0

    .line 173
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->opid:I

    .line 174
    add-int/lit8 v0, v0, 0x2

    .line 176
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    .line 177
    return-void
.end method


# virtual methods
.method public getPaletteIndex()I
    .locals 3

    .line 280
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasPaletteIndexFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 281
    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public getRGB()[I
    .locals 3

    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_BLUE:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 225
    .local v0, "rgb":[I
    return-object v0
.end method

.method public getSchemeIndex()I
    .locals 2

    .line 272
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSchemeIndexFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 273
    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getSysIndexInvert()I
    .locals 3

    .line 259
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 260
    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_GREEN:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 261
    .local v0, "val":I
    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    iget-object v2, v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 262
    :cond_1
    sget-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    iget-object v2, v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    return v1

    .line 263
    :cond_2
    return v1
.end method

.method public getSysIndexProcedure()Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 7

    .line 245
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 246
    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 247
    .local v0, "val":I
    invoke-static {}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 248
    .local v5, "sip":Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    sget-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    if-eq v5, v6, :cond_2

    sget-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    iget-object v6, v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    invoke-virtual {v6, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_2

    return-object v5

    .line 247
    .end local v5    # "sip":Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "arr$":[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    return-object v1
.end method

.method public getSysIndexSource()Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 7

    .line 232
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 233
    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_RED:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    .line 234
    .local v0, "val":I
    invoke-static {}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 235
    .local v5, "sis":Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    iget v6, v5, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    if-ne v6, v0, :cond_1

    return-object v5

    .line 234
    .end local v5    # "sis":Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "arr$":[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    return-object v1
.end method

.method public hasPaletteIndexFlag()Z
    .locals 2

    .line 212
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPaletteRGBFlag()Z
    .locals 2

    .line 204
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSchemeIndexFlag()Z
    .locals 2

    .line 188
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSysIndexFlag()Z
    .locals 2

    .line 180
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSystemRGBFlag()Z
    .locals 2

    .line 196
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public setPaletteIndexFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 216
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 217
    return-void
.end method

.method public setPaletteRGBFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 208
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_PALETTE_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 209
    return-void
.end method

.method public setSchemeIndexFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 192
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SCHEME_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 193
    return-void
.end method

.method public setSysIndexFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 184
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYS_INDEX:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 185
    return-void
.end method

.method public setSystemRGBFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 200
    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef;->FLAG_SYSTEM_RGB:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/ddf/EscherColorRef;->colorRef:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 201
    return-void
.end method

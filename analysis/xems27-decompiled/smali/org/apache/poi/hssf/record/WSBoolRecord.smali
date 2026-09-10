.class public final Lorg/apache/poi/hssf/record/WSBoolRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "WSBoolRecord.java"


# static fields
.field private static final alternateexpression:Lorg/apache/poi/util/BitField;

.field private static final alternateformula:Lorg/apache/poi/util/BitField;

.field private static final applystyles:Lorg/apache/poi/util/BitField;

.field private static final autobreaks:Lorg/apache/poi/util/BitField;

.field private static final dialog:Lorg/apache/poi/util/BitField;

.field private static final displayguts:Lorg/apache/poi/util/BitField;

.field private static final fittopage:Lorg/apache/poi/util/BitField;

.field private static final rowsumsbelow:Lorg/apache/poi/util/BitField;

.field private static final rowsumsright:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x81s


# instance fields
.field private field_1_wsbool:B

.field private field_2_wsbool:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/WSBoolRecord;->applystyles:Lorg/apache/poi/util/BitField;

    .line 44
    const/16 v1, 0x40

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    .line 45
    const/16 v2, 0x80

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    .line 46
    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    .line 49
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    .line 52
    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    .line 53
    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 60
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v0

    .line 62
    .local v0, "data":[B
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 64
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 66
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 333
    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>()V

    .line 334
    .local v0, "rec":Lorg/apache/poi/hssf/record/WSBoolRecord;
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 335
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 336
    return-object v0
.end method

.method public getAlternateExpression()Z
    .locals 2

    .line 275
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getAlternateFormula()Z
    .locals 2

    .line 285
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getAutobreaks()Z
    .locals 2

    .line 201
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 324
    const/4 v0, 0x2

    return v0
.end method

.method public getDialog()Z
    .locals 2

    .line 211
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 2

    .line 265
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getFitToPage()Z
    .locals 2

    .line 254
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getRowSumsBelow()Z
    .locals 2

    .line 221
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getRowSumsRight()Z
    .locals 2

    .line 231
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 329
    const/16 v0, 0x81

    return v0
.end method

.method public getWSBool1()B
    .locals 1

    .line 189
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    return v0
.end method

.method public getWSBool2()B
    .locals 1

    .line 242
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 319
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool2()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 320
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool1()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 321
    return-void
.end method

.method public setAlternateExpression(Z)V
    .locals 2
    .param p1, "altexp"    # Z

    .line 166
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateexpression:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 168
    return-void
.end method

.method public setAlternateFormula(Z)V
    .locals 2
    .param p1, "formula"    # Z

    .line 177
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->alternateformula:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 179
    return-void
.end method

.method public setAutobreaks(Z)V
    .locals 2
    .param p1, "ab"    # Z

    .line 92
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->autobreaks:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 93
    return-void
.end method

.method public setDialog(Z)V
    .locals 2
    .param p1, "isDialog"    # Z

    .line 102
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->dialog:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 103
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2
    .param p1, "guts"    # Z

    .line 156
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->displayguts:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 157
    return-void
.end method

.method public setFitToPage(Z)V
    .locals 2
    .param p1, "fit2page"    # Z

    .line 145
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->fittopage:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 146
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 2
    .param p1, "below"    # Z

    .line 112
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsbelow:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 113
    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 2
    .param p1, "right"    # Z

    .line 122
    sget-object v0, Lorg/apache/poi/hssf/record/WSBoolRecord;->rowsumsright:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 123
    return-void
.end method

.method public setWSBool1(B)V
    .locals 0
    .param p1, "bool1"    # B

    .line 80
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_1_wsbool:B

    .line 81
    return-void
.end method

.method public setWSBool2(B)V
    .locals 0
    .param p1, "bool2"    # B

    .line 133
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/WSBoolRecord;->field_2_wsbool:B

    .line 134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[WSBOOL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v1, "    .wsbool1        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool1()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v2, "        .autobreaks = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAutobreaks()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v2, "        .dialog     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDialog()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v2, "        .rowsumsbelw= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsBelow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v2, "        .rowsumsrigt= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsRight()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v2, "    .wsbool2        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool2()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v2, "        .fittopage  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getFitToPage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v2, "        .displayguts= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDisplayGuts()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v2, "        .alternateex= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateExpression()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v2, "        .alternatefo= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateFormula()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "[/WSBOOL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

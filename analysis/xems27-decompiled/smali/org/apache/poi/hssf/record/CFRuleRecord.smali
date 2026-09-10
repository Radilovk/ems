.class public final Lorg/apache/poi/hssf/record/CFRuleRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CFRuleRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/CFRuleRecord$ComparisonOperator;
    }
.end annotation


# static fields
.field public static final CONDITION_TYPE_CELL_VALUE_IS:B = 0x1t

.field public static final CONDITION_TYPE_FORMULA:B = 0x2t

.field private static final align:Lorg/apache/poi/util/BitField;

.field private static final alignHor:Lorg/apache/poi/util/BitField;

.field private static final alignIndent:Lorg/apache/poi/util/BitField;

.field private static final alignJustLast:Lorg/apache/poi/util/BitField;

.field private static final alignRot:Lorg/apache/poi/util/BitField;

.field private static final alignShrin:Lorg/apache/poi/util/BitField;

.field private static final alignTextDir:Lorg/apache/poi/util/BitField;

.field private static final alignVer:Lorg/apache/poi/util/BitField;

.field private static final alignWrap:Lorg/apache/poi/util/BitField;

.field private static final bord:Lorg/apache/poi/util/BitField;

.field private static final bordBlTr:Lorg/apache/poi/util/BitField;

.field private static final bordBot:Lorg/apache/poi/util/BitField;

.field private static final bordLeft:Lorg/apache/poi/util/BitField;

.field private static final bordRight:Lorg/apache/poi/util/BitField;

.field private static final bordTlBr:Lorg/apache/poi/util/BitField;

.field private static final bordTop:Lorg/apache/poi/util/BitField;

.field private static final fmtBlockBits:Lorg/apache/poi/util/BitField;

.field private static final font:Lorg/apache/poi/util/BitField;

.field private static final modificationBits:Lorg/apache/poi/util/BitField;

.field private static final notUsed1:Lorg/apache/poi/util/BitField;

.field private static final notUsed2:Lorg/apache/poi/util/BitField;

.field private static final patt:Lorg/apache/poi/util/BitField;

.field private static final pattBgCol:Lorg/apache/poi/util/BitField;

.field private static final pattCol:Lorg/apache/poi/util/BitField;

.field private static final pattStyle:Lorg/apache/poi/util/BitField;

.field private static final prot:Lorg/apache/poi/util/BitField;

.field private static final protHidden:Lorg/apache/poi/util/BitField;

.field private static final protLocked:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1b1s

.field private static final undocumented:Lorg/apache/poi/util/BitField;


# instance fields
.field private _borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

.field private _fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

.field private _patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

.field private field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

.field private field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

.field private field_1_condition_type:B

.field private field_2_comparison_operator:B

.field private field_5_options:I

.field private field_6_not_used:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const v0, 0x3fffff

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->modificationBits:Lorg/apache/poi/util/BitField;

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignHor:Lorg/apache/poi/util/BitField;

    .line 65
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignVer:Lorg/apache/poi/util/BitField;

    .line 66
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignWrap:Lorg/apache/poi/util/BitField;

    .line 67
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignRot:Lorg/apache/poi/util/BitField;

    .line 68
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignJustLast:Lorg/apache/poi/util/BitField;

    .line 69
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignIndent:Lorg/apache/poi/util/BitField;

    .line 70
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignShrin:Lorg/apache/poi/util/BitField;

    .line 71
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->notUsed1:Lorg/apache/poi/util/BitField;

    .line 72
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->protLocked:Lorg/apache/poi/util/BitField;

    .line 73
    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->protHidden:Lorg/apache/poi/util/BitField;

    .line 74
    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordLeft:Lorg/apache/poi/util/BitField;

    .line 75
    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordRight:Lorg/apache/poi/util/BitField;

    .line 76
    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordTop:Lorg/apache/poi/util/BitField;

    .line 77
    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordBot:Lorg/apache/poi/util/BitField;

    .line 78
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordTlBr:Lorg/apache/poi/util/BitField;

    .line 79
    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordBlTr:Lorg/apache/poi/util/BitField;

    .line 80
    const/high16 v0, 0x10000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattStyle:Lorg/apache/poi/util/BitField;

    .line 81
    const/high16 v0, 0x20000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattCol:Lorg/apache/poi/util/BitField;

    .line 82
    const/high16 v0, 0x40000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattBgCol:Lorg/apache/poi/util/BitField;

    .line 83
    const/high16 v0, 0x380000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->notUsed2:Lorg/apache/poi/util/BitField;

    .line 84
    const/high16 v0, 0x3c00000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->undocumented:Lorg/apache/poi/util/BitField;

    .line 85
    const/high16 v0, 0x7c000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->fmtBlockBits:Lorg/apache/poi/util/BitField;

    .line 86
    const/high16 v0, 0x4000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->font:Lorg/apache/poi/util/BitField;

    .line 87
    const/high16 v0, 0x8000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->align:Lorg/apache/poi/util/BitField;

    .line 88
    const/high16 v0, 0x10000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bord:Lorg/apache/poi/util/BitField;

    .line 89
    const/high16 v0, 0x20000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->patt:Lorg/apache/poi/util/BitField;

    .line 90
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->prot:Lorg/apache/poi/util/BitField;

    .line 91
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->alignTextDir:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(BB)V
    .locals 3
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B

    .line 111
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 112
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_1_condition_type:B

    .line 113
    iput-byte p2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_2_comparison_operator:B

    .line 116
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->modificationBits:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 118
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleRecord;->fmtBlockBits:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 119
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleRecord;->undocumented:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 121
    const/16 v0, -0x7ffe

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_6_not_used:S

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 123
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 124
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 125
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 126
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 127
    return-void
.end method

.method private constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "conditionType"    # B
    .param p2, "comparisonOperation"    # B
    .param p3, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p4, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB)V

    .line 131
    invoke-static {p3}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 132
    invoke-static {p4}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 153
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 154
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_1_condition_type:B

    .line 155
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_2_comparison_operator:B

    .line 156
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 157
    .local v0, "field_3_formula1_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 158
    .local v1, "field_4_formula2_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 159
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_6_not_used:S

    .line 161
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    new-instance v2, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    new-instance v2, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 169
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    new-instance v2, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 174
    :cond_2
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 175
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 176
    return-void
.end method

.method private static bf(I)Lorg/apache/poi/util/BitField;
    .locals 1
    .param p0, "i"    # I

    .line 95
    invoke-static {p0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 4
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "comparisonOperation"    # B
    .param p2, "formulaText1"    # Ljava/lang/String;
    .param p3, "formulaText2"    # Ljava/lang/String;

    .line 148
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 149
    .local v0, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 150
    .local v1, "formula2":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v2, Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 5
    .param p0, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 139
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 140
    .local v0, "formula1":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1
.end method

.method private static getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I
    .locals 1
    .param p0, "formula"    # Lorg/apache/poi/ss/formula/Formula;

    .line 425
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    return v0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 1
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 378
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method private isModified(Lorg/apache/poi/util/BitField;)Z
    .locals 1
    .param p1, "field"    # Lorg/apache/poi/util/BitField;

    .line 278
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 524
    if-nez p0, :cond_0

    .line 525
    const/4 v0, 0x0

    return-object v0

    .line 527
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    .line 528
    .local v0, "sheetIndex":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method private setModified(ZLorg/apache/poi/util/BitField;)V
    .locals 2
    .param p1, "modified"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 283
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 284
    return-void
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "field"    # Lorg/apache/poi/util/BitField;

    .line 383
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 384
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 497
    new-instance v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_1_condition_type:B

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_2_comparison_operator:B

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB)V

    .line 498
    .local v0, "rec":Lorg/apache/poi/hssf/record/CFRuleRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    .line 499
    iget-short v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_6_not_used:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_6_not_used:S

    .line 500
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 503
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 506
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 507
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 509
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 510
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 512
    return-object v0
.end method

.method public containsAlignFormattingBlock()Z
    .locals 1

    .line 203
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->align:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsBorderFormattingBlock()Z
    .locals 1

    .line 212
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bord:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsFontFormattingBlock()Z
    .locals 1

    .line 185
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->font:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsPatternFormattingBlock()Z
    .locals 1

    .line 230
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->patt:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public containsProtectionFormattingBlock()Z
    .locals 1

    .line 248
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->prot:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    return-object v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComparisonOperation()B
    .locals 1

    .line 262
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_2_comparison_operator:B

    return v0
.end method

.method public getConditionType()B
    .locals 1

    .line 180
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_1_condition_type:B

    return v0
.end method

.method protected getDataSize()I
    .locals 3

    .line 465
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getRawRecord()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    :cond_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    .local v0, "i":I
    return v0
.end method

.method public getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;
    .locals 1

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    return-object v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .line 273
    iget v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    return v0
.end method

.method public getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 417
    const/16 v0, 0x1b1

    return v0
.end method

.method public isBottomBorderModified()Z
    .locals 1

    .line 318
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordBot:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isBottomLeftTopRightBorderModified()Z
    .locals 1

    .line 338
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordBlTr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isLeftBorderModified()Z
    .locals 1

    .line 288
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordLeft:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isPatternBackgroundColorModified()Z
    .locals 1

    .line 368
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattBgCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isPatternColorModified()Z
    .locals 1

    .line 358
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isPatternStyleModified()Z
    .locals 1

    .line 348
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattStyle:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isRightBorderModified()Z
    .locals 1

    .line 298
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordRight:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isTopBorderModified()Z
    .locals 1

    .line 308
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordTop:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isTopLeftBottomRightBorderModified()Z
    .locals 1

    .line 328
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordTlBr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->isModified(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 437
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    .line 438
    .local v0, "formula1Len":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    .line 440
    .local v1, "formula2Len":I
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_1_condition_type:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 441
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_2_comparison_operator:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 442
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 443
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 444
    iget v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_5_options:I

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 445
    iget-short v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_6_not_used:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 447
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getRawRecord()[B

    move-result-object v2

    .line 449
    .local v2, "fontFormattingRawRecord":[B
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 452
    .end local v2    # "fontFormattingRawRecord":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 456
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 460
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 461
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 462
    return-void
.end method

.method public setAlignFormattingUnchanged()V
    .locals 2

    .line 207
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->align:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 208
    return-void
.end method

.method public setBorderFormatting(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V
    .locals 2
    .param p1, "borderFormatting"    # Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 216
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 217
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleRecord;->bord:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 218
    return-void
.end method

.method public setBottomBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 323
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordBot:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 324
    return-void
.end method

.method public setBottomLeftTopRightBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 343
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordBlTr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 344
    return-void
.end method

.method public setComparisonOperation(B)V
    .locals 0
    .param p1, "operation"    # B

    .line 257
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_2_comparison_operator:B

    .line 258
    return-void
.end method

.method public setFontFormatting(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V
    .locals 2
    .param p1, "fontFormatting"    # Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 189
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 190
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleRecord;->font:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 191
    return-void
.end method

.method public setLeftBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 293
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordLeft:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 294
    return-void
.end method

.method public setParsedExpression1([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 400
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    .line 401
    return-void
.end method

.method public setParsedExpression2([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 412
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    .line 413
    return-void
.end method

.method public setPatternBackgroundColorModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 373
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattBgCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 374
    return-void
.end method

.method public setPatternColorModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 363
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattCol:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 364
    return-void
.end method

.method public setPatternFormatting(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V
    .locals 2
    .param p1, "patternFormatting"    # Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 234
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 235
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleRecord;->patt:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 236
    return-void
.end method

.method public setPatternStyleModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 353
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->pattStyle:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 354
    return-void
.end method

.method public setProtectionFormattingUnchanged()V
    .locals 2

    .line 252
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->prot:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    .line 253
    return-void
.end method

.method public setRightBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 303
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordRight:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 304
    return-void
.end method

.method public setTopBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 313
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordTop:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 314
    return-void
.end method

.method public setTopLeftBottomRightBorderModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 333
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleRecord;->bordTlBr:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setModified(ZLorg/apache/poi/util/BitField;)V

    .line 334
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 477
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CFRULE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    const-string v1, "    .condition_type   ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_1_condition_type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v2, "    OPTION FLAGS=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getOptions()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsFontFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    :cond_2
    const-string v2, "    Formula 1 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_17_formula1:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string v2, "    Formula 2 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleRecord;->field_18_formula2:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v1, "[/CFRULE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

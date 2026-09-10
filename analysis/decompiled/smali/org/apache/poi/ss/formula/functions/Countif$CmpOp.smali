.class final Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;
.super Ljava/lang/Object;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmpOp"
.end annotation


# static fields
.field public static final EQ:I = 0x1

.field public static final GE:I = 0x6

.field public static final GT:I = 0x5

.field public static final LE:I = 0x3

.field public static final LT:I = 0x4

.field public static final NE:I = 0x2

.field public static final NONE:I

.field public static final OP_EQ:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

.field public static final OP_GE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

.field public static final OP_GT:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

.field public static final OP_LE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

.field public static final OP_LT:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

.field public static final OP_NE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

.field public static final OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;


# instance fields
.field private final _code:I

.field private final _representation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 57
    const-string v0, "="

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_EQ:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 58
    const-string v0, "<>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 59
    const-string v0, "<="

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_LE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 60
    const-string v0, "<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_LT:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 61
    const-string v0, ">"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_GT:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 62
    const-string v0, ">="

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_GE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "representation"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_representation:Ljava/lang/String;

    .line 71
    iput p2, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_code:I

    .line 72
    return-void
.end method

.method public static getOperator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 84
    .local v1, "len":I
    if-ge v1, v3, :cond_0

    .line 85
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 112
    :goto_0
    return-object v2

    .line 88
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    .local v0, "firstChar":C
    packed-switch v0, :pswitch_data_0

    .line 112
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NONE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 92
    :pswitch_0
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_EQ:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 94
    :pswitch_1
    if-le v1, v3, :cond_1

    .line 95
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 100
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_GT:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 97
    :pswitch_2
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_GE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 102
    :pswitch_3
    if-le v1, v3, :cond_2

    .line 103
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 110
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_LT:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 105
    :pswitch_4
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_LE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 107
    :pswitch_5
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->OP_NE:Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_2
    .end packed-switch

    .line 103
    :pswitch_data_2
    .packed-switch 0x3d
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static op(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;
    .locals 1
    .param p0, "rep"    # Ljava/lang/String;
    .param p1, "code"    # I

    .prologue
    .line 67
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public evaluate(I)Z
    .locals 3
    .param p1, "cmpResult"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    iget v2, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_code:I

    packed-switch v2, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call boolean evaluate on non-equality operator \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_representation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :pswitch_1
    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 131
    :pswitch_2
    if-ltz p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 132
    :pswitch_3
    if-lez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 133
    :pswitch_4
    if-gtz p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 134
    :pswitch_5
    if-gez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public evaluate(Z)Z
    .locals 3
    .param p1, "cmpResult"    # Z

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_code:I

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call boolean evaluate on non-equality operator \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_representation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move p1, v0

    .end local p1    # "cmpResult":Z
    :pswitch_1
    return p1

    .restart local p1    # "cmpResult":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_code:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_representation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getRepresentation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_representation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->_representation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

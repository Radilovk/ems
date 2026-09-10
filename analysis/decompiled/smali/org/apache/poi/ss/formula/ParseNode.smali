.class final Lorg/apache/poi/ss/formula/ParseNode;
.super Ljava/lang/Object;
.source "ParseNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;


# instance fields
.field private final _children:[Lorg/apache/poi/ss/formula/ParseNode;

.field private _isIf:Z

.field private final _token:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private final _tokenCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    sput-object v0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 60
    sget-object v0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 2
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "child0"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 2
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "child0"    # Lorg/apache/poi/ss/formula/ParseNode;
    .param p3, "child1"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 4
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "children"    # [Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 47
    iput-object p2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    .line 48
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ParseNode;->isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_isIf:Z

    .line 49
    const/4 v1, 0x1

    .line 50
    .local v1, "tokenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 51
    aget-object v2, p2, v0

    invoke-direct {v2}, Lorg/apache/poi/ss/formula/ParseNode;->getTokenCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-boolean v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_isIf:Z

    if-eqz v2, :cond_2

    .line 55
    array-length v2, p2

    add-int/2addr v1, v2

    .line 57
    :cond_2
    iput v1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_tokenCount:I

    .line 58
    return-void
.end method

.method private collectIfPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V
    .locals 12
    .param p1, "temp"    # Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {v8, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 115
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v4

    .line 118
    .local v4, "ifAttrIndex":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-direct {v8, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 121
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v6

    .line 122
    .local v6, "skipAfterTrueParamIndex":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8, v6}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->sumTokenSizes(II)I

    move-result v7

    .line 124
    .local v7, "trueParamSize":I
    add-int/lit8 v8, v7, 0x4

    invoke-static {v8}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createIf(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v0

    .line 126
    .local v0, "attrIf":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v8

    array-length v8, v8

    if-le v8, v10, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-direct {v8, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 132
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v5

    .line 134
    .local v5, "skipAfterFalseParamIndex":I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8, v5}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->sumTokenSizes(II)I

    move-result v3

    .line 136
    .local v3, "falseParamSize":I
    add-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v2

    .line 137
    .local v2, "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-static {v11}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v1

    .line 139
    .local v1, "attrSkipAfterFalse":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p1, v4, v0}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 140
    invoke-virtual {p1, v6, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 141
    invoke-virtual {p1, v5, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 149
    .end local v1    # "attrSkipAfterFalse":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v3    # "falseParamSize":I
    .end local v5    # "skipAfterFalseParamIndex":I
    :goto_0
    iget-object v8, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 150
    return-void

    .line 144
    .end local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :cond_0
    invoke-static {v11}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v2

    .line 146
    .restart local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p1, v4, v0}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 147
    invoke-virtual {p1, v6, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0
.end method

.method private collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V
    .locals 3
    .param p1, "temp"    # Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    .prologue
    .line 88
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v2}, Lorg/apache/poi/ss/formula/ParseNode;->isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectIfPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v2, v2, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v2, v2, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-eqz v2, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 93
    .local v1, "isPreFixOperator":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 94
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 96
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    .end local v0    # "i":I
    .end local v1    # "isPreFixOperator":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 99
    .restart local v0    # "i":I
    .restart local v1    # "isPreFixOperator":Z
    :cond_5
    if-nez v1, :cond_0

    .line 100
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0
.end method

.method private getTokenCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_tokenCount:I

    return v0
.end method

.method private static isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 3
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 153
    instance-of v1, p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 154
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 155
    .local v0, "func":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    const-string v1, "IF"

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 159
    .end local v0    # "func":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p0, "rootNode"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 83
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getTokenCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;-><init>(I)V

    .line 84
    .local v0, "temp":Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 85
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->getResult()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChildren()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object v0
.end method

.method public getEncodedSize()I
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v2, v2, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    .line 73
    .local v1, "result":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    goto :goto_0

    .line 76
    .restart local v0    # "i":I
    .restart local v1    # "result":I
    :cond_1
    return v1
.end method

.method public getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

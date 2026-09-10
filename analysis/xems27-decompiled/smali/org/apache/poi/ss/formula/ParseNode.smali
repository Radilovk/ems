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

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    sput-object v0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

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
    .locals 3
    .param p1, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "children"    # [Lorg/apache/poi/ss/formula/ParseNode;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_2

    .line 46
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 47
    iput-object p2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    .line 48
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ParseNode;->isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_isIf:Z

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "tokenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 51
    aget-object v2, p2, v1

    invoke-direct {v2}, Lorg/apache/poi/ss/formula/ParseNode;->getTokenCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_isIf:Z

    if-eqz v1, :cond_1

    .line 55
    array-length v1, p2

    add-int/2addr v0, v1

    .line 57
    :cond_1
    iput v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_tokenCount:I

    .line 58
    return-void

    .line 44
    .end local v0    # "tokenCount":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private collectIfPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V
    .locals 9
    .param p1, "temp"    # Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 115
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v0

    .line 118
    .local v0, "ifAttrIndex":I
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 121
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v1

    .line 122
    .local v1, "skipAfterTrueParamIndex":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->sumTokenSizes(II)I

    move-result v3

    .line 124
    .local v3, "trueParamSize":I
    add-int/lit8 v4, v3, 0x4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createIf(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v4

    .line 126
    .local v4, "attrIf":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-direct {v5, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 132
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->createPlaceholder()I

    move-result v5

    .line 134
    .local v5, "skipAfterFalseParamIndex":I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7, v5}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->sumTokenSizes(II)I

    move-result v7

    .line 136
    .local v7, "falseParamSize":I
    add-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0x4

    sub-int/2addr v8, v2

    invoke-static {v8}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v2

    .line 137
    .local v2, "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v6

    .line 139
    .local v6, "attrSkipAfterFalse":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p1, v0, v4}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 140
    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 141
    invoke-virtual {p1, v5, v6}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 142
    .end local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v5    # "skipAfterFalseParamIndex":I
    .end local v6    # "attrSkipAfterFalse":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    .end local v7    # "falseParamSize":I
    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->createSkip(I)Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v2

    .line 146
    .restart local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {p1, v0, v4}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 147
    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->setPlaceholder(ILorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 149
    .end local v2    # "attrSkipAfterTrue":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 150
    return-void
.end method

.method private collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V
    .locals 3
    .param p1, "temp"    # Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;

    .line 88
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ParseNode;->isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectIfPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 90
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 93
    .local v0, "isPreFixOperator":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 94
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 96
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-direct {v2, p1}, Lorg/apache/poi/ss/formula/ParseNode;->collectPtgs(Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    .end local v1    # "i":I
    :cond_4
    if-nez v0, :cond_5

    .line 100
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ParseNode$TokenCollector;->add(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 102
    :cond_5
    return-void
.end method

.method private getTokenCount()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_tokenCount:I

    return v0
.end method

.method private static isIf(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 3
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 153
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v0, :cond_0

    .line 154
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 155
    .local v0, "func":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    return v1

    .line 159
    .end local v0    # "func":Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p0, "rootNode"    # Lorg/apache/poi/ss/formula/ParseNode;

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

    .line 167
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object v0
.end method

.method public getEncodedSize()I
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 73
    .local v0, "result":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ParseNode;->_children:[Lorg/apache/poi/ss/formula/ParseNode;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 74
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ParseNode;->_token:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

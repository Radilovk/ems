.class final Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;
.super Ljava/lang/Object;
.source "FormulaCellCacheEntrySet.java"


# static fields
.field private static final EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;


# instance fields
.field private _arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

.field private _size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 37
    return-void
.end method

.method private static addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z
    .locals 7
    .param p0, "arr"    # [Lorg/apache/poi/ss/formula/CellCacheEntry;
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    array-length v6, p0

    rem-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 81
    .local v2, "startIx":I
    move v0, v2

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 82
    aget-object v1, p0, v0

    .line 83
    .local v1, "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    if-ne v1, p1, :cond_1

    .line 100
    :cond_0
    :goto_1
    return v3

    .line 87
    :cond_1
    if-nez v1, :cond_2

    .line 88
    aput-object p1, p0, v0

    move v3, v4

    .line 89
    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 93
    aget-object v1, p0, v0

    .line 94
    .restart local v1    # "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    if-eq v1, p1, :cond_0

    .line 98
    if-nez v1, :cond_4

    .line 99
    aput-object p1, p0, v0

    move v3, v4

    .line 100
    goto :goto_1

    .line 92
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    .end local v1    # "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No empty space found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public add(Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 6
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .prologue
    .line 60
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    mul-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_2

    .line 62
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 63
    .local v2, "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 64
    .local v1, "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 65
    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    aget-object v3, v4, v0

    .line 66
    .local v3, "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-eqz v3, :cond_0

    .line 67
    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_1
    iput-object v1, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 72
    .end local v0    # "i":I
    .end local v1    # "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v2    # "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-static {v4, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 75
    :cond_3
    return-void
.end method

.method public remove(Lorg/apache/poi/ss/formula/CellCacheEntry;)Z
    .locals 11
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 109
    .local v0, "arr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    mul-int/lit8 v8, v8, 0x3

    iget-object v9, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v9, v9

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v8, v8

    const/16 v9, 0x8

    if-le v8, v9, :cond_3

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "found":Z
    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 113
    .local v5, "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    new-array v4, v8, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 114
    .local v4, "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_2

    .line 115
    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    aget-object v6, v8, v2

    .line 116
    .local v6, "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-eqz v6, :cond_0

    .line 117
    if-ne v6, p1, :cond_1

    .line 118
    const/4 v1, 0x1

    .line 119
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v4, v6}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    goto :goto_1

    .line 126
    .end local v6    # "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_2
    iput-object v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 153
    .end local v1    # "found":Z
    .end local v4    # "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v5    # "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :goto_2
    return v1

    .line 132
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    array-length v9, v0

    rem-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 135
    .local v7, "startIx":I
    move v2, v7

    .restart local v2    # "i":I
    :goto_3
    array-length v8, v0

    if-ge v2, v8, :cond_5

    .line 136
    aget-object v3, v0, v2

    .line 137
    .local v3, "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-ne v3, p1, :cond_4

    .line 139
    aput-object v10, v0, v2

    .line 140
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    goto :goto_2

    .line 135
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 144
    .end local v3    # "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v7, :cond_7

    .line 145
    aget-object v3, v0, v2

    .line 146
    .restart local v3    # "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-ne v3, p1, :cond_6

    .line 148
    aput-object v10, v0, v2

    .line 149
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    goto :goto_2

    .line 144
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 153
    .end local v3    # "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public toArray()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 8

    .prologue
    .line 40
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 41
    .local v4, "nItems":I
    const/4 v6, 0x1

    if-ge v4, v6, :cond_1

    .line 42
    sget-object v5, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 55
    :cond_0
    return-object v5

    .line 44
    :cond_1
    new-array v5, v4, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 45
    .local v5, "result":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v2, 0x0

    .line 46
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 47
    iget-object v6, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    aget-object v0, v6, v1

    .line 48
    .local v0, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-eqz v0, :cond_2

    .line 49
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aput-object v0, v5, v2

    move v2, v3

    .line 46
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_3
    if-eq v2, v4, :cond_0

    .line 53
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "size mismatch"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

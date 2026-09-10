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

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 37
    return-void
.end method

.method private static addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z
    .locals 5
    .param p0, "arr"    # [Lorg/apache/poi/ss/formula/CellCacheEntry;
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    array-length v1, p0

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 81
    .local v0, "startIx":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    .line 82
    aget-object v2, p0, v1

    .line 83
    .local v2, "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    if-ne v2, p1, :cond_0

    .line 85
    return v3

    .line 87
    :cond_0
    if-nez v2, :cond_1

    .line 88
    aput-object p1, p0, v1

    .line 89
    return v4

    .line 81
    .end local v2    # "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 93
    aget-object v2, p0, v1

    .line 94
    .restart local v2    # "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    if-ne v2, p1, :cond_3

    .line 96
    return v3

    .line 98
    :cond_3
    if-nez v2, :cond_4

    .line 99
    aput-object p1, p0, v1

    .line 100
    return v4

    .line 92
    .end local v2    # "item":Lorg/apache/poi/ss/formula/CellCacheEntry;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "i":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No empty space found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/poi/ss/formula/CellCacheEntry;)V
    .locals 4
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 60
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_2

    .line 62
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 63
    .local v0, "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 64
    .local v1, "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 65
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    aget-object v3, v3, v2

    .line 66
    .local v3, "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-eqz v3, :cond_0

    .line 67
    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    .line 64
    .end local v3    # "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_1
    iput-object v1, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 72
    .end local v0    # "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v1    # "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 75
    :cond_3
    return-void
.end method

.method public remove(Lorg/apache/poi/ss/formula/CellCacheEntry;)Z
    .locals 8
    .param p1, "cce"    # Lorg/apache/poi/ss/formula/CellCacheEntry;

    .line 107
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 109
    .local v0, "arr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    array-length v1, v2

    const/16 v3, 0x8

    if-le v1, v3, :cond_3

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "found":Z
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 113
    .local v3, "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 114
    .local v2, "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 115
    iget-object v6, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    aget-object v6, v6, v5

    .line 116
    .local v6, "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-eqz v6, :cond_1

    .line 117
    if-ne v6, p1, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 119
    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    sub-int/2addr v7, v4

    iput v7, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 121
    goto :goto_1

    .line 123
    :cond_0
    invoke-static {v2, v6}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->addInternal([Lorg/apache/poi/ss/formula/CellCacheEntry;Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    .line 114
    .end local v6    # "prevCce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .end local v5    # "i":I
    :cond_2
    iput-object v2, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 127
    return v1

    .line 132
    .end local v1    # "found":Z
    .end local v2    # "newArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v3    # "prevArr":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    array-length v2, v0

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 135
    .local v1, "startIx":I
    move v2, v1

    .local v2, "i":I
    :goto_2
    array-length v3, v0

    const/4 v5, 0x0

    if-ge v2, v3, :cond_5

    .line 136
    aget-object v3, v0, v2

    .line 137
    .local v3, "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-ne v3, p1, :cond_4

    .line 139
    aput-object v5, v0, v2

    .line 140
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 141
    return v4

    .line 135
    .end local v3    # "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 144
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_7

    .line 145
    aget-object v3, v0, v2

    .line 146
    .restart local v3    # "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-ne v3, p1, :cond_6

    .line 148
    aput-object v5, v0, v2

    .line 149
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 150
    return v4

    .line 144
    .end local v3    # "item":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 153
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method public toArray()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 6

    .line 40
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_size:I

    .line 41
    .local v0, "nItems":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 42
    sget-object v1, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    return-object v1

    .line 44
    :cond_0
    new-array v1, v0, [Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 45
    .local v1, "result":[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    const/4 v2, 0x0

    .line 46
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->_arr:[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 47
    aget-object v4, v4, v3

    .line 48
    .local v4, "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    if-eqz v4, :cond_1

    .line 49
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "j":I
    .local v5, "j":I
    aput-object v4, v1, v2

    move v2, v5

    .line 46
    .end local v4    # "cce":Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v3    # "i":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 55
    return-object v1

    .line 53
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "size mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

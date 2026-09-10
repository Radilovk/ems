.class public abstract Lorg/apache/poi/poifs/property/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Lorg/apache/poi/poifs/property/Child;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# static fields
.field protected static final _NODE_BLACK:B = 0x1t

.field protected static final _NODE_RED:B = 0x0t

.field protected static final _NO_INDEX:I = -0x1

.field private static final _big_block_minimum_bytes:I = 0x1000

.field private static final _child_property_offset:I = 0x4c

.field private static final _days_1_offset:I = 0x68

.field private static final _days_2_offset:I = 0x70

.field private static final _default_fill:B = 0x0t

.field private static final _max_name_length:I = 0x1f

.field private static final _name_size_offset:I = 0x40

.field private static final _next_property_offset:I = 0x48

.field private static final _node_color_offset:I = 0x43

.field private static final _previous_property_offset:I = 0x44

.field private static final _seconds_1_offset:I = 0x64

.field private static final _seconds_2_offset:I = 0x6c

.field private static final _size_offset:I = 0x78

.field private static final _start_block_offset:I = 0x74

.field private static final _storage_clsid_offset:I = 0x50

.field private static final _user_flags_offset:I = 0x60


# instance fields
.field private _child_property:Lorg/apache/poi/util/IntegerField;

.field private _days_1:Lorg/apache/poi/util/IntegerField;

.field private _days_2:Lorg/apache/poi/util/IntegerField;

.field private _index:I

.field private _name:Ljava/lang/String;

.field private _name_size:Lorg/apache/poi/util/ShortField;

.field private _next_child:Lorg/apache/poi/poifs/property/Child;

.field private _next_property:Lorg/apache/poi/util/IntegerField;

.field private _node_color:Lorg/apache/poi/util/ByteField;

.field private _previous_child:Lorg/apache/poi/poifs/property/Child;

.field private _previous_property:Lorg/apache/poi/util/IntegerField;

.field private _property_type:Lorg/apache/poi/util/ByteField;

.field private _raw_data:[B

.field private _seconds_1:Lorg/apache/poi/util/IntegerField;

.field private _seconds_2:Lorg/apache/poi/util/IntegerField;

.field private _size:Lorg/apache/poi/util/IntegerField;

.field private _start_block:Lorg/apache/poi/util/IntegerField;

.field private _storage_clsid:Lorg/apache/poi/hpsf/ClassID;

.field private _user_flags:Lorg/apache/poi/util/IntegerField;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    .line 93
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 94
    new-instance v0, Lorg/apache/poi/util/ShortField;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/apache/poi/util/ShortField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    .line 95
    new-instance v0, Lorg/apache/poi/util/ByteField;

    const/16 v2, 0x42

    invoke-direct {v0, v2}, Lorg/apache/poi/util/ByteField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    .line 97
    new-instance v0, Lorg/apache/poi/util/ByteField;

    const/16 v2, 0x43

    invoke-direct {v0, v2}, Lorg/apache/poi/util/ByteField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    .line 98
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x44

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    .line 100
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x48

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    .line 102
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x4c

    invoke-direct {v0, v3, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    .line 104
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    .line 105
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x60

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_user_flags:Lorg/apache/poi/util/IntegerField;

    .line 106
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_1:Lorg/apache/poi/util/IntegerField;

    .line 108
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x68

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_days_1:Lorg/apache/poi/util/IntegerField;

    .line 109
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x6c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_2:Lorg/apache/poi/util/IntegerField;

    .line 111
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x70

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_days_2:Lorg/apache/poi/util/IntegerField;

    .line 112
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x74

    invoke-direct {v0, v2}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    .line 113
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x78

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    .line 114
    iput v4, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    .line 115
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setName(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 117
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 118
    return-void
.end method

.method protected constructor <init>(I[BI)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v0, 0x80

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    .line 130
    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    new-instance v0, Lorg/apache/poi/util/ShortField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x40

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/ShortField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    .line 133
    new-instance v0, Lorg/apache/poi/util/ByteField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x42

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/ByteField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    .line 135
    new-instance v0, Lorg/apache/poi/util/ByteField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x43

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/ByteField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    .line 136
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x44

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    .line 138
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x48

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    .line 140
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x4c

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    .line 142
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x50

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    .line 143
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x60

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_user_flags:Lorg/apache/poi/util/IntegerField;

    .line 144
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_1:Lorg/apache/poi/util/IntegerField;

    .line 145
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x68

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_days_1:Lorg/apache/poi/util/IntegerField;

    .line 146
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x6c

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_2:Lorg/apache/poi/util/IntegerField;

    .line 147
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x70

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_days_2:Lorg/apache/poi/util/IntegerField;

    .line 148
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x74

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    .line 149
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v3, 0x78

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    .line 150
    iput p1, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    .line 151
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    invoke-virtual {v0}, Lorg/apache/poi/util/ShortField;->get()S

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 154
    .local v0, "name_length":I
    if-ge v0, v1, :cond_0

    .line 156
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_0
    new-array v1, v0, [C

    .line 161
    .local v1, "char_array":[C
    const/4 v3, 0x0

    .line 163
    .local v3, "name_offset":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 165
    new-instance v5, Lorg/apache/poi/util/ShortField;

    iget-object v6, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v5, v3, v6}, Lorg/apache/poi/util/ShortField;-><init>(I[B)V

    invoke-virtual {v5}, Lorg/apache/poi/util/ShortField;->get()S

    move-result v5

    int-to-char v5, v5

    aput-char v5, v1, v4

    .line 167
    add-int/lit8 v3, v3, 0x2

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v4    # "j":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    .line 171
    .end local v1    # "char_array":[C
    .end local v3    # "name_offset":I
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_next_child:Lorg/apache/poi/poifs/property/Child;

    .line 172
    iput-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_previous_child:Lorg/apache/poi/poifs/property/Child;

    .line 173
    return-void
.end method

.method public static isSmall(I)Z
    .locals 1
    .param p0, "length"    # I

    .line 240
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isValidIndex(I)Z
    .locals 1
    .param p0, "index"    # I

    .line 419
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getChildIndex()I
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method protected getIndex()I
    .locals 1

    .line 381
    iget v0, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextChild()Lorg/apache/poi/poifs/property/Child;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_child:Lorg/apache/poi/poifs/property/Child;

    return-object v0
.end method

.method getNextChildIndex()I
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getPreviousChild()Lorg/apache/poi/poifs/property/Child;
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_child:Lorg/apache/poi/poifs/property/Child;

    return-object v0
.end method

.method getPreviousChildIndex()I
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "Property: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getStartBlock()I
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    return v0
.end method

.method public getStorageClsid()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 8

    .line 478
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 480
    .local v0, "results":[Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name          = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    invoke-virtual {v2}, Lorg/apache/poi/util/ByteField;->get()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node Color    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    invoke-virtual {v2}, Lorg/apache/poi/util/ByteField;->get()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 483
    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_days_1:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    int-to-long v1, v1

    .line 485
    .local v1, "time":J
    const/16 v3, 0x20

    shl-long/2addr v1, v3

    .line 486
    iget-object v4, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_1:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v4}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time 1        = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 488
    iget-object v4, p0, Lorg/apache/poi/poifs/property/Property;->_days_2:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v4}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v4

    int-to-long v1, v4

    .line 489
    shl-long/2addr v1, v3

    .line 490
    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_seconds_2:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v3}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    add-long/2addr v1, v3

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 2        = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    .line 492
    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract isDirectory()Z
.end method

.method protected abstract preWrite()V
.end method

.method public preferArray()Z
    .locals 1

    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method protected setChildProperty(I)V
    .locals 2
    .param p1, "child"    # I

    .line 340
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_child_property:Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    .line 341
    return-void
.end method

.method protected setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 371
    iput p1, p0, Lorg/apache/poi/poifs/property/Property;->_index:I

    .line 372
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 276
    .local v0, "char_array":[C
    array-length v1, v0

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 278
    .local v1, "limit":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_name:Ljava/lang/String;

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "offset":S
    const/4 v4, 0x0

    .line 282
    .local v4, "j":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 284
    new-instance v5, Lorg/apache/poi/util/ShortField;

    aget-char v6, v0, v4

    int-to-short v6, v6

    iget-object v7, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v5, v2, v6, v7}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 285
    add-int/lit8 v5, v2, 0x2

    int-to-short v2, v5

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    :cond_0
    :goto_1
    const/16 v5, 0x20

    if-ge v4, v5, :cond_1

    .line 289
    new-instance v5, Lorg/apache/poi/util/ShortField;

    iget-object v6, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-direct {v5, v2, v3, v6}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 290
    add-int/lit8 v5, v2, 0x2

    int-to-short v2, v5

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/poifs/property/Property;->_name_size:Lorg/apache/poi/util/ShortField;

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    iget-object v6, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/util/ShortField;->set(S[B)V

    .line 297
    return-void
.end method

.method public setNextChild(Lorg/apache/poi/poifs/property/Child;)V
    .locals 3
    .param p1, "child"    # Lorg/apache/poi/poifs/property/Child;

    .line 450
    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_next_child:Lorg/apache/poi/poifs/property/Child;

    .line 451
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_next_property:Lorg/apache/poi/util/IntegerField;

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getIndex()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    .line 454
    return-void
.end method

.method protected setNodeColor(B)V
    .locals 2
    .param p1, "nodeColor"    # B

    .line 330
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_node_color:Lorg/apache/poi/util/ByteField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/ByteField;->set(B[B)V

    .line 331
    return-void
.end method

.method public setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V
    .locals 3
    .param p1, "child"    # Lorg/apache/poi/poifs/property/Child;

    .line 464
    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_previous_child:Lorg/apache/poi/poifs/property/Child;

    .line 465
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_previous_property:Lorg/apache/poi/util/IntegerField;

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getIndex()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    .line 468
    return-void
.end method

.method protected setPropertyType(B)V
    .locals 2
    .param p1, "propertyType"    # B

    .line 320
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_property_type:Lorg/apache/poi/util/ByteField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/ByteField;->set(B[B)V

    .line 321
    return-void
.end method

.method protected setSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 360
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    .line 361
    return-void
.end method

.method public setStartBlock(I)V
    .locals 2
    .param p1, "startBlock"    # I

    .line 198
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_start_block:Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    .line 199
    return-void
.end method

.method public setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 4
    .param p1, "clsidStorage"    # Lorg/apache/poi/hpsf/ClassID;

    .line 306
    iput-object p1, p0, Lorg/apache/poi/poifs/property/Property;->_storage_clsid:Lorg/apache/poi/hpsf/ClassID;

    .line 307
    const/16 v0, 0x50

    if-nez p1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    const/16 v2, 0x60

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    .line 312
    :goto_0
    return-void
.end method

.method public shouldUseSmallBlocks()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_size:Lorg/apache/poi/util/IntegerField;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isSmall(I)Z

    move-result v0

    return v0
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/poi/poifs/property/Property;->_raw_data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 188
    return-void
.end method

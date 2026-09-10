.class public Lcom/alibaba/fastjson/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field inputStackTop:I

.field next:Lcom/alibaba/fastjson/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/alibaba/fastjson/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I

    .line 162
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 163
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 165
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 166
    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 167
    .local v0, "a":[I
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 170
    .end local v0    # "a":[I
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p1, v0, v1

    .line 171
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p2, v0, v2

    .line 172
    return-void
.end method


# virtual methods
.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V
    .locals 1
    .param p1, "owner"    # Lcom/alibaba/fastjson/asm/MethodWriter;
    .param p2, "out"    # Lcom/alibaba/fastjson/asm/ByteVector;
    .param p3, "source"    # I

    .line 144
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 145
    iget v0, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/asm/Label;->addReference(II)V

    .line 146
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0

    .line 148
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 150
    :goto_0
    return-void
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
    .locals 6
    .param p1, "owner"    # Lcom/alibaba/fastjson/asm/MethodWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    .line 191
    iput p2, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget v0, v1, v0

    .line 195
    .local v0, "source":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget v1, v1, v2

    .line 196
    .local v1, "reference":I
    sub-int v2, p2, v0

    .line 197
    .local v2, "offset":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "reference":I
    .local v4, "reference":I
    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v1

    .line 198
    int-to-byte v1, v2

    aput-byte v1, p3, v4

    .line 200
    .end local v0    # "source":I
    .end local v2    # "offset":I
    .end local v4    # "reference":I
    move v0, v3

    goto :goto_0

    .line 201
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_0
    return-void
.end method

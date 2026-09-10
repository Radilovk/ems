.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;
.source "PrimitiveArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 8
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 31
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 32
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 33
    return-void

    .line 36
    :cond_0
    instance-of v1, p2, [I

    const/16 v2, 0x2c

    const/16 v3, 0x5d

    const/16 v4, 0x5b

    if-eqz v1, :cond_3

    .line 37
    move-object v1, p2

    check-cast v1, [I

    check-cast v1, [I

    .line 38
    .local v1, "array":[I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 39
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 40
    if-eqz v4, :cond_1

    .line 41
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 43
    :cond_1
    aget v5, v1, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 46
    return-void

    .line 49
    .end local v1    # "array":[I
    :cond_3
    instance-of v1, p2, [S

    if-eqz v1, :cond_6

    .line 50
    move-object v1, p2

    check-cast v1, [S

    check-cast v1, [S

    .line 51
    .local v1, "array":[S
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 52
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 53
    if-eqz v4, :cond_4

    .line 54
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 56
    :cond_4
    aget-short v5, v1, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 58
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 59
    return-void

    .line 62
    .end local v1    # "array":[S
    :cond_6
    instance-of v1, p2, [J

    if-eqz v1, :cond_9

    .line 63
    move-object v1, p2

    check-cast v1, [J

    check-cast v1, [J

    .line 65
    .local v1, "array":[J
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_8

    .line 67
    if-eqz v4, :cond_7

    .line 68
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    :cond_7
    aget-wide v5, v1, v4

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 72
    .end local v4    # "i":I
    :cond_8
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 73
    return-void

    .line 76
    .end local v1    # "array":[J
    :cond_9
    instance-of v1, p2, [Z

    if-eqz v1, :cond_c

    .line 77
    move-object v1, p2

    check-cast v1, [Z

    check-cast v1, [Z

    .line 78
    .local v1, "array":[Z
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 79
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_b

    .line 80
    if-eqz v4, :cond_a

    .line 81
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :cond_a
    aget-boolean v5, v1, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 85
    .end local v4    # "i":I
    :cond_b
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 86
    return-void

    .line 89
    .end local v1    # "array":[Z
    :cond_c
    instance-of v1, p2, [F

    if-eqz v1, :cond_10

    .line 90
    move-object v1, p2

    check-cast v1, [F

    check-cast v1, [F

    .line 91
    .local v1, "array":[F
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_f

    .line 93
    if-eqz v4, :cond_d

    .line 94
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 97
    :cond_d
    aget v5, v1, v4

    .line 98
    .local v5, "item":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_5

    .line 101
    :cond_e
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 92
    .end local v5    # "item":F
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 104
    .end local v4    # "i":I
    :cond_f
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 105
    return-void

    .line 108
    .end local v1    # "array":[F
    :cond_10
    instance-of v1, p2, [D

    if-eqz v1, :cond_14

    .line 109
    move-object v1, p2

    check-cast v1, [D

    check-cast v1, [D

    .line 110
    .local v1, "array":[D
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 111
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v5, v1

    if-ge v4, v5, :cond_13

    .line 112
    if-eqz v4, :cond_11

    .line 113
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 116
    :cond_11
    aget-wide v5, v1, v4

    .line 117
    .local v5, "item":D
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_7

    .line 120
    :cond_12
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 111
    .end local v5    # "item":D
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 123
    .end local v4    # "i":I
    :cond_13
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 124
    return-void

    .line 127
    .end local v1    # "array":[D
    :cond_14
    instance-of v1, p2, [B

    if-eqz v1, :cond_15

    .line 128
    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    .line 129
    .local v1, "array":[B
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    .line 130
    return-void

    .line 133
    .end local v1    # "array":[B
    :cond_15
    move-object v1, p2

    check-cast v1, [C

    check-cast v1, [C

    .line 134
    .local v1, "chars":[C
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString([C)V

    .line 135
    return-void
.end method

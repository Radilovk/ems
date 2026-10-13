.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
.super Ljava/lang/Object;
.source "BluetensLok.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;
    }
.end annotation


# static fields
.field public static final MAX_FREQ:I = 0x4b0

.field public static final MAX_IMPULSE:I = 0x190


# instance fields
.field public final loops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->loops:Ljava/util/List;

    return-void
.end method

.method public static block(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;IIIII)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 88
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;-><init>()V

    .line 89
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    .line 90
    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    .line 91
    const/16 v1, 0x190

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    .line 92
    const/16 v1, 0x2ee0

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    .line 93
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    .line 94
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-object v0
.end method

.method static digit(C)Z
    .registers 2

    .prologue
    .line 273
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x66

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static freq(Ljava/lang/StringBuilder;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;)V
    .registers 4

    .prologue
    .line 154
    iget v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_18

    .line 155
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_17
    return-void

    .line 157
    :cond_18
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method

.method static hex(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 15

    .prologue
    const/16 v13, 0x52

    const/16 v12, 0x49

    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 168
    new-instance v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;-><init>()V

    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v1

    move-object v0, v2

    move-object v3, v2

    move-object v4, v2

    move v5, v8

    .line 175
    :goto_16
    if-ge v7, v9, :cond_183

    .line 176
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 177
    const/16 v7, 0x20

    if-eq v10, v7, :cond_196

    const/16 v7, 0xd

    if-eq v10, v7, :cond_196

    if-eq v10, v8, :cond_196

    const/16 v7, 0x9

    if-ne v10, v7, :cond_2e

    move v7, v1

    .line 178
    goto :goto_16

    :cond_2e
    move v7, v1

    .line 181
    :goto_2f
    if-ge v7, v9, :cond_3e

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->digit(C)Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 182
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 184
    :cond_3e
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 186
    sparse-switch v10, :sswitch_data_19a

    .line 233
    if-nez v4, :cond_ea

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outside a section"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_60
    move-object v1, v0

    :goto_61
    move-object v0, v1

    .line 265
    goto :goto_16

    .line 190
    :sswitch_63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 191
    if-eq v5, v8, :cond_193

    const/16 v10, 0x10

    if-eq v5, v10, :cond_193

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "digit base "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :sswitch_86
    if-eqz v4, :cond_90

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nested section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_90
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;-><init>()V

    move-object v1, v2

    move-object v3, v2

    move-object v4, v0

    .line 202
    goto :goto_61

    .line 204
    :sswitch_99
    if-nez v4, :cond_a3

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "} without {"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_a3
    if-eqz v3, :cond_aa

    .line 208
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_aa
    iget-object v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 214
    goto :goto_61

    .line 216
    :sswitch_b3
    if-nez v4, :cond_bd

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "| outside a section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_bd
    if-eqz v3, :cond_190

    .line 220
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    .line 223
    :goto_c5
    if-eqz v1, :cond_ce

    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;)V

    :goto_cc
    move-object v3, v0

    .line 224
    goto :goto_61

    .line 223
    :cond_ce
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;-><init>()V

    goto :goto_cc

    :sswitch_d4
    move-object v1, v0

    .line 226
    goto :goto_61

    :sswitch_d6
    move-object v0, v6

    .line 269
    :goto_d7
    return-object v0

    .line 230
    :sswitch_d8
    iget-object v10, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->loops:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 231
    goto/16 :goto_61

    .line 236
    :cond_ea
    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 237
    if-nez v3, :cond_117

    .line 238
    if-ne v10, v13, :cond_f7

    .line 239
    iput v1, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    move-object v1, v0

    goto/16 :goto_61

    .line 240
    :cond_f7
    if-ne v10, v12, :cond_fe

    .line 241
    iput v1, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    move-object v1, v0

    goto/16 :goto_61

    .line 243
    :cond_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in a section header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_117
    if-ne v10, v13, :cond_11e

    .line 246
    iput v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    move-object v1, v0

    goto/16 :goto_61

    .line 247
    :cond_11e
    if-ne v10, v12, :cond_125

    .line 248
    iput v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    move-object v1, v0

    goto/16 :goto_61

    .line 249
    :cond_125
    const/16 v11, 0x46

    if-ne v10, v11, :cond_130

    .line 250
    mul-int/lit8 v1, v1, 0xa

    iput v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    move-object v1, v0

    goto/16 :goto_61

    .line 251
    :cond_130
    const/16 v11, 0x54

    if-ne v10, v11, :cond_139

    .line 252
    iput v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    move-object v1, v0

    goto/16 :goto_61

    .line 253
    :cond_139
    const/16 v11, 0x50

    if-ne v10, v11, :cond_161

    .line 254
    if-lez v1, :cond_143

    const/16 v10, 0x190

    if-le v1, v10, :cond_15c

    .line 255
    :cond_143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_15c
    iput v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    move-object v1, v0

    goto/16 :goto_61

    .line 258
    :cond_161
    const/16 v11, 0x43

    if-ne v10, v11, :cond_16a

    .line 259
    iput v1, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    move-object v1, v0

    goto/16 :goto_61

    .line 261
    :cond_16a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_183
    if-eqz v4, :cond_18d

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unterminated section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18d
    move-object v0, v6

    .line 269
    goto/16 :goto_d7

    :cond_190
    move-object v1, v0

    goto/16 :goto_c5

    :cond_193
    move-object v1, v0

    goto/16 :goto_61

    :cond_196
    move v7, v1

    goto/16 :goto_16

    .line 186
    nop

    :sswitch_data_19a
    .sparse-switch
        0x3c -> :sswitch_d4
        0x3e -> :sswitch_d6
        0x44 -> :sswitch_63
        0x53 -> :sswitch_d8
        0x56 -> :sswitch_60
        0x7b -> :sswitch_86
        0x7c -> :sswitch_b3
        0x7d -> :sswitch_99
    .end sparse-switch
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .registers 13

    .prologue
    const/16 v11, 0x50

    const/16 v10, 0x43

    const/4 v9, 0x1

    const/16 v8, 0x52

    const/16 v7, 0x49

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "V1D16"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    .line 102
    const/16 v1, 0x7b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    if-eq v1, v9, :cond_38

    .line 104
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_38
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    if-eqz v1, :cond_49

    .line 107
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_49
    const/4 v1, 0x0

    .line 110
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 111
    const/16 v5, 0x7c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    if-nez v1, :cond_a4

    .line 113
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    if-eqz v1, :cond_81

    .line 115
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_81
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->freq(Ljava/lang/StringBuilder;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;)V

    .line 119
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    if-eq v1, v9, :cond_a2

    .line 120
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a2
    :goto_a2
    move-object v1, v0

    .line 140
    goto :goto_50

    .line 123
    :cond_a4
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    iget v6, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    if-eq v5, v6, :cond_b7

    .line 124
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_b7
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    iget v6, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    if-eq v5, v6, :cond_ca

    .line 127
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_ca
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    iget v6, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    if-eq v5, v6, :cond_dd

    .line 130
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_dd
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    iget v6, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    if-eq v5, v6, :cond_e6

    .line 133
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->freq(Ljava/lang/StringBuilder;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;)V

    .line 135
    :cond_e6
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    if-eq v5, v1, :cond_a2

    .line 136
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 141
    :cond_fa
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    .line 143
    :cond_101
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->loops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_135

    .line 144
    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->loops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_114
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_130

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_114

    .line 148
    :cond_130
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    :cond_135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ms()D
    .registers 9

    .prologue
    .line 62
    const-wide/16 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [D

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    array-length v0, v4

    if-ge v1, v0, :cond_24

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 66
    aget-wide v6, v4, v1

    add-double/2addr v2, v6

    .line 64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 68
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->loops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    array-length v6, v4

    if-ge v5, v6, :cond_2a

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-wide v6, v4, v0

    add-double/2addr v2, v6

    goto :goto_2a

    .line 73
    :cond_4b
    return-wide v2
.end method

.method public section(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;
    .registers 4

    .prologue
    .line 80
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;-><init>()V

    .line 81
    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    .line 82
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

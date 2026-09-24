.class final Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;
.super Ljava/lang/Object;
.source "XemsLicenseToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# instance fields
.field i:I

.field final s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method expect(C)V
    .registers 5

    .prologue
    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_16

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_16
    return-void
.end method

.method object()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 163
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 164
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 165
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v1

    if-ne v1, v4, :cond_1f

    .line 166
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 179
    :cond_1e
    return-object v0

    .line 170
    :cond_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 171
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 173
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 174
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 175
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 177
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 178
    if-eq v1, v4, :cond_1e

    .line 181
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1f

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method peek()C
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method string()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x22

    .line 250
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    :goto_a
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 254
    if-ne v1, v4, :cond_1d

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_1d
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_6f

    .line 258
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 259
    sparse-switch v1, :sswitch_data_74

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 260
    :sswitch_34
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 261
    :sswitch_3a
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 262
    :sswitch_40
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 263
    :sswitch_46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 264
    :sswitch_4c
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 266
    :sswitch_52
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_a

    .line 272
    :cond_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 259
    nop

    :sswitch_data_74
    .sparse-switch
        0x62 -> :sswitch_46
        0x66 -> :sswitch_4c
        0x6e -> :sswitch_34
        0x72 -> :sswitch_40
        0x74 -> :sswitch_3a
        0x75 -> :sswitch_52
    .end sparse-switch
.end method

.method value()Ljava/lang/Object;
    .registers 8

    .prologue
    const/16 v6, 0x7b

    const/16 v4, 0x5d

    const/16 v5, 0x22

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v0

    .line 189
    if-ne v0, v5, :cond_11

    .line 190
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_10
    :goto_10
    return-object v0

    .line 192
    :cond_11
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_57

    .line 193
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v1

    if-ne v1, v4, :cond_30

    .line 197
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_10

    .line 201
    :cond_30
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 202
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 205
    if-eq v1, v4, :cond_10

    .line 208
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_30

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_57
    if-ne v0, v6, :cond_8a

    .line 214
    const/4 v0, 0x0

    .line 215
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 217
    :cond_5c
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 218
    if-ne v2, v5, :cond_7e

    .line 219
    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 220
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    .line 226
    :cond_73
    :goto_73
    if-gtz v0, :cond_5c

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 221
    :cond_7e
    if-ne v2, v6, :cond_83

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 223
    :cond_83
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_73

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    .line 229
    :cond_8a
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 230
    :goto_8c
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_ad

    const-string v1, ",}] \t\r\n"

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_ad

    .line 231
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_8c

    .line 233
    :cond_ad
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 235
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 237
    :cond_c1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 238
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 240
    :cond_cd
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 241
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 243
    :cond_d8
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f0

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_f6

    .line 244
    :cond_f0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_10

    .line 246
    :cond_f6
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_10
.end method

.method ws()V
    .registers 4

    .prologue
    .line 288
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    const-string v0, " \t\r\n"

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_21

    .line 289
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_0

    .line 291
    :cond_21
    return-void
.end method

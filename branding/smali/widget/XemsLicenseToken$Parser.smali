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
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method expect(C)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    return-void
.end method

.method object()Ljava/util/Map;
    .locals 5
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

    .line 169
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 171
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 172
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 173
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 174
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 187
    :cond_0
    return-object v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 179
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 181
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 185
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    if-eq v1, v4, :cond_0

    .line 189
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method peek()C
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method string()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 258
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 262
    if-ne v1, v4, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 266
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 267
    sparse-switch v1, :sswitch_data_0

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :sswitch_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 269
    :sswitch_1
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :sswitch_2
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :sswitch_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :sswitch_4
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :sswitch_5
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

    .line 275
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_0
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_5
    .end sparse-switch
.end method

.method value()Ljava/lang/Object;
    .locals 7

    .prologue
    const/16 v6, 0x7b

    const/16 v4, 0x5d

    const/16 v5, 0x22

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v0

    .line 197
    if-ne v0, v5, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    .line 201
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 204
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 205
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 212
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 213
    if-eq v1, v4, :cond_0

    .line 216
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_3
    if-ne v0, v6, :cond_8

    .line 222
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 225
    :cond_4
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 226
    if-ne v2, v5, :cond_6

    .line 227
    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 228
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    .line 234
    :cond_5
    :goto_1
    if-gtz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_6
    if-ne v2, v6, :cond_7

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_7
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_5

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 237
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 238
    :goto_2
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    const-string v1, ",}] \t\r\n"

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 239
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_2

    .line 241
    :cond_9
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 243
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 245
    :cond_a
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 246
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 248
    :cond_b
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 249
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 251
    :cond_c
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_d

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_d

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_e

    .line 252
    :cond_d
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :cond_e
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0
.end method

.method ws()V
    .locals 3

    .prologue
    .line 296
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, " \t\r\n"

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 297
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

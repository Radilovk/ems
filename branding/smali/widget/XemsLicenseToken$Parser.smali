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

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method expect(C)V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_f

    .line 293
    return-void

    .line 291
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method object()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

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

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1f

    .line 174
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 175
    return-object v0

    .line 178
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 179
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 181
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 185
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 186
    if-ne v1, v2, :cond_4a

    .line 187
    return-object v0

    .line 189
    :cond_4a
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_4f

    .line 192
    goto :goto_1f

    .line 190
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method peek()C
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method string()Ljava/lang/String;
    .registers 6

    .line 258
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->expect(C)V

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 262
    if-ne v2, v0, :cond_1d

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1d
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_82

    .line 266
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 267
    const/16 v3, 0x62

    if-eq v2, v3, :cond_7c

    const/16 v3, 0x66

    if-eq v2, v3, :cond_76

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_70

    const/16 v3, 0x72

    if-eq v2, v3, :cond_6a

    const/16 v3, 0x74

    if-eq v2, v3, :cond_64

    const/16 v3, 0x75

    if-eq v2, v3, :cond_49

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 274
    :cond_49
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 276
    goto :goto_81

    .line 269
    :cond_64
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 270
    :cond_6a
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 268
    :cond_70
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 272
    :cond_76
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 271
    :cond_7c
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :goto_81
    goto :goto_85

    .line 280
    :cond_82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :goto_85
    goto :goto_a
.end method

.method value()Ljava/lang/Object;
    .registers 8

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->peek()C

    move-result v0

    .line 197
    const/16 v1, 0x22

    if-ne v0, v1, :cond_d

    .line 198
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_d
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_57

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

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_2e

    .line 205
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 206
    return-object v0

    .line 209
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->ws()V

    .line 212
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 213
    if-ne v1, v2, :cond_4a

    .line 214
    return-object v0

    .line 216
    :cond_4a
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_4f

    .line 219
    goto :goto_2e

    .line 217
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "json"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_57
    const/16 v2, 0x7b

    if-ne v0, v2, :cond_8c

    .line 222
    const/4 v0, 0x0

    .line 223
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 225
    :cond_5e
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v5, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 226
    if-ne v4, v1, :cond_76

    .line 227
    iget v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 228
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->string()Ljava/lang/String;

    goto :goto_81

    .line 229
    :cond_76
    if-ne v4, v2, :cond_7b

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 231
    :cond_7b
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_81

    .line 232
    add-int/lit8 v0, v0, -0x1

    .line 234
    :cond_81
    :goto_81
    if-gtz v0, :cond_5e

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_8c
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    .line 238
    :goto_8e
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_af

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ",}] \t\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_af

    .line 239
    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_8e

    .line 241
    :cond_af
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 243
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 245
    :cond_c2
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 246
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 248
    :cond_cd
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_d7
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f5

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_f5

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_f0

    goto :goto_f5

    .line 254
    :cond_f0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 252
    :cond_f5
    :goto_f5
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method ws()V
    .registers 3

    .line 296
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, " \t\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_21

    .line 297
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseToken$Parser;->i:I

    goto :goto_0

    .line 299
    :cond_21
    return-void
.end method

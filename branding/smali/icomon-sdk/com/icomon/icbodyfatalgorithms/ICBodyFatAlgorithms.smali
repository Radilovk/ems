.class public Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;
.super Ljava/lang/Object;
.source "ICBodyFatAlgorithms.java"


# static fields
.field static isLoaded:Z

.field static final lock:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->lock:Ljava/lang/Integer;

    sput-boolean v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->isLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calc(Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;
    .registers 12

    .line 211
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 212
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->algType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    invoke-virtual {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v0

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    iget-wide v2, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->weight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "weight"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget v2, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget v2, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->age:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "age"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v2, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->bmiStandard:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "bmiStandard"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->sex:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    invoke-virtual {v2}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "sex"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "algType"

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->peopleType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    invoke-virtual {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "peopleType"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp1:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "imp1"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp2:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v5, "imp2"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-wide v6, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp3:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v6, "imp3"

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-wide v7, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp4:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v7, "imp4"

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-wide v8, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp5:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v8, "imp5"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    const-string v9, "imps"

    const-string v10, "impCount"

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_117

    .line 239
    :cond_a9
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    if-lt v0, v9, :cond_ce

    .line 242
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_ce
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_e0

    .line 245
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_e0
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x3

    if-lt v0, v5, :cond_f2

    .line 248
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_f2
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_104

    .line 251
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_104
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_167

    .line 254
    iget-object p0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_167

    .line 228
    :cond_117
    :goto_117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp1:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp2:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp3:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp4:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    iget-wide v5, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp5:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    invoke-virtual {v1, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_167
    :goto_167
    invoke-static {v1}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_calc(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    .line 263
    new-instance v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;

    invoke-direct {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;-><init>()V

    const-string v1, "bmi"

    .line 264
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmi:D

    const-string v1, "bfr"

    .line 266
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfr:D

    const-string v1, "muscle"

    .line 267
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscle:D

    const-string v1, "subcutfat"

    .line 268
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->subcutfat:D

    const-string v1, "vfal"

    .line 269
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->vfal:D

    const-string v1, "bone"

    .line 270
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bone:D

    const-string v1, "water"

    .line 271
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->water:D

    const-string v1, "protein"

    .line 272
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->protein:D

    const-string v1, "sm"

    .line 273
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->sm:D

    const-string v1, "bmr"

    .line 274
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmr:I

    .line 275
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->age:I

    const-string v1, "leftArmMuscle"

    .line 277
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmMuscle:D

    const-string v1, "leftArmMuscleMass"

    .line 278
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmMuscleMass:D

    const-string v1, "leftArmBodyfatPercentage"

    .line 279
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmBodyfatPercentage:D

    const-string v1, "leftArmBodyfatMass"

    .line 280
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmBodyfatMass:D

    const-string v1, "leftLegMuscle"

    .line 282
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegMuscle:D

    const-string v1, "leftLegMuscleMass"

    .line 283
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegMuscleMass:D

    const-string v1, "leftLegBodyfatPercentage"

    .line 284
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegBodyfatPercentage:D

    const-string v1, "leftLegBodyfatMass"

    .line 285
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegBodyfatMass:D

    const-string v1, "rightArmMuscle"

    .line 287
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmMuscle:D

    const-string v1, "rightArmMuscleMass"

    .line 288
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmMuscleMass:D

    const-string v1, "rightArmBodyfatPercentage"

    .line 289
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmBodyfatPercentage:D

    const-string v1, "rightArmBodyfatMass"

    .line 290
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmBodyfatMass:D

    const-string v1, "rightLegMuscle"

    .line 292
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegMuscle:D

    const-string v1, "rightLegMuscleMass"

    .line 293
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegMuscleMass:D

    const-string v1, "rightLegBodyfatPercentage"

    .line 294
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegBodyfatPercentage:D

    const-string v1, "rightLegBodyfatMass"

    .line 295
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegBodyfatMass:D

    const-string v1, "trunkMuscle"

    .line 297
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkMuscle:D

    const-string v1, "trunkMuscleMass"

    .line 298
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkMuscleMass:D

    const-string v1, "trunkBodyfatPercentage"

    .line 299
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkBodyfatPercentage:D

    const-string v1, "trunkBodyfatMass"

    .line 300
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkBodyfatMass:D

    const-string v1, "bodyScore"

    .line 301
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyScore:D

    const-string v1, "bodyType"

    .line 303
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyType:I

    const-string v1, "bfmControl"

    .line 304
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmControl:D

    const-string v1, "ffmControl"

    .line 305
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmControl:D

    const-string v1, "weightControl"

    .line 306
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightControl:D

    const-string v1, "weightTarget"

    .line 307
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightTarget:D

    const-string v1, "bfmStandard"

    .line 309
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmStandard:D

    const-string v1, "bfpStandard"

    .line 310
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpStandard:D

    .line 311
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiStandard:D

    const-string v1, "bmrStandard"

    .line 312
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrStandard:I

    const-string v1, "weightStandard"

    .line 313
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightStandard:D

    const-string v1, "ffmStandard"

    .line 314
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmStandard:D

    const-string v1, "smmStandard"

    .line 315
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmStandard:D

    const-string v1, "smi"

    .line 317
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smi:D

    const-string v1, "obesityDegree"

    .line 318
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->obesityDegree:I

    const-string v1, "whr"

    .line 319
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->whr:D

    const-string v1, "bmi_max"

    .line 322
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMax:D

    const-string v1, "bmi_min"

    .line 323
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMin:D

    const-string v1, "bfm_max"

    .line 324
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMax:D

    const-string v1, "bfm_min"

    .line 325
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMin:D

    const-string v1, "bfp_max"

    .line 326
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMax:D

    const-string v1, "bfp_min"

    .line 327
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMin:D

    const-string v1, "weight_max"

    .line 328
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMax:D

    const-string v1, "weight_min"

    .line 329
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMin:D

    const-string v1, "smm_max"

    .line 330
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMax:D

    const-string v1, "smm_min"

    .line 331
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMin:D

    const-string v1, "bone_max"

    .line 332
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMax:D

    const-string v1, "bone_min"

    .line 333
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMin:D

    const-string v1, "waterMass_max"

    .line 334
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMax:D

    const-string v1, "waterMass_min"

    .line 335
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMin:D

    const-string v1, "proteinMass_max"

    .line 336
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMax:D

    const-string v1, "proteinMass_min"

    .line 337
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMin:D

    const-string v1, "muscleMass_max"

    .line 338
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMax:D

    const-string v1, "muscleMass_min"

    .line 339
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMin:D

    const-string v1, "bmr_max"

    .line 340
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMax:I

    const-string v1, "bmr_min"

    .line 341
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMin:I

    return-object v0
.end method

.method public static calc_other(DILcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;IID)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;
    .registers 10

    .line 350
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "weight"

    .line 352
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "height"

    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "age"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "bmiStandard"

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p3}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "sex"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p3, "bfr"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_calc_other(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    .line 359
    new-instance p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;

    invoke-direct {p4}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;-><init>()V

    const-string p5, "bmi"

    .line 360
    invoke-virtual {p0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmi:D

    .line 362
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfr:D

    const-string p3, "muscle"

    .line 363
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscle:D

    const-string p3, "subcutfat"

    .line 364
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->subcutfat:D

    const-string p3, "vfal"

    .line 365
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->vfal:D

    const-string p3, "bone"

    .line 366
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bone:D

    const-string p3, "water"

    .line 367
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->water:D

    const-string p3, "protein"

    .line 368
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->protein:D

    const-string p3, "sm"

    .line 369
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->sm:D

    const-string p3, "bmr"

    .line 370
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmr:I

    .line 371
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->age:I

    const-string p1, "leftArmMuscle"

    .line 373
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmMuscle:D

    const-string p1, "leftArmMuscleMass"

    .line 374
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmMuscleMass:D

    const-string p1, "leftArmBodyfatPercentage"

    .line 375
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmBodyfatPercentage:D

    const-string p1, "leftArmBodyfatMass"

    .line 376
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmBodyfatMass:D

    const-string p1, "leftLegMuscle"

    .line 378
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegMuscle:D

    const-string p1, "leftLegMuscleMass"

    .line 379
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegMuscleMass:D

    const-string p1, "leftLegBodyfatPercentage"

    .line 380
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegBodyfatPercentage:D

    const-string p1, "leftLegBodyfatMass"

    .line 381
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegBodyfatMass:D

    const-string p1, "rightArmMuscle"

    .line 383
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmMuscle:D

    const-string p1, "rightArmMuscleMass"

    .line 384
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmMuscleMass:D

    const-string p1, "rightArmBodyfatPercentage"

    .line 385
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmBodyfatPercentage:D

    const-string p1, "rightArmBodyfatMass"

    .line 386
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmBodyfatMass:D

    const-string p1, "rightLegMuscle"

    .line 388
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegMuscle:D

    const-string p1, "rightLegMuscleMass"

    .line 389
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegMuscleMass:D

    const-string p1, "rightLegBodyfatPercentage"

    .line 390
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegBodyfatPercentage:D

    const-string p1, "rightLegBodyfatMass"

    .line 391
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegBodyfatMass:D

    const-string p1, "trunkMuscle"

    .line 393
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkMuscle:D

    const-string p1, "trunkMuscleMass"

    .line 394
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkMuscleMass:D

    const-string p1, "trunkBodyfatPercentage"

    .line 395
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkBodyfatPercentage:D

    const-string p1, "trunkBodyfatMass"

    .line 396
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkBodyfatMass:D

    const-string p1, "bodyScore"

    .line 397
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyScore:D

    const-string p1, "bodyType"

    .line 399
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyType:I

    const-string p1, "bfmControl"

    .line 400
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmControl:D

    const-string p1, "ffmControl"

    .line 401
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmControl:D

    const-string p1, "weightControl"

    .line 402
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightControl:D

    const-string p1, "weightTarget"

    .line 403
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightTarget:D

    const-string p1, "bfmStandard"

    .line 405
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmStandard:D

    const-string p1, "bfpStandard"

    .line 406
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    iput-wide p5, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpStandard:D

    .line 407
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiStandard:D

    const-string p1, "bmrStandard"

    .line 408
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrStandard:I

    const-string p1, "weightStandard"

    .line 409
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightStandard:D

    const-string p1, "ffmStandard"

    .line 410
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmStandard:D

    const-string p1, "smmStandard"

    .line 411
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmStandard:D

    const-string p1, "smi"

    .line 413
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smi:D

    const-string p1, "obesityDegree"

    .line 414
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->obesityDegree:I

    const-string p1, "whr"

    .line 415
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->whr:D

    const-string p1, "bmi_max"

    .line 418
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMax:D

    const-string p1, "bmi_min"

    .line 419
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMin:D

    const-string p1, "bfm_max"

    .line 420
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMax:D

    const-string p1, "bfm_min"

    .line 421
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMin:D

    const-string p1, "bfp_max"

    .line 422
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMax:D

    const-string p1, "bfp_min"

    .line 423
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMin:D

    const-string p1, "weight_max"

    .line 424
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMax:D

    const-string p1, "weight_min"

    .line 425
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMin:D

    const-string p1, "smm_max"

    .line 426
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMax:D

    const-string p1, "smm_min"

    .line 427
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMin:D

    const-string p1, "bone_max"

    .line 428
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMax:D

    const-string p1, "bone_min"

    .line 429
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMin:D

    const-string p1, "waterMass_max"

    .line 430
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMax:D

    const-string p1, "waterMass_min"

    .line 431
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMin:D

    const-string p1, "proteinMass_max"

    .line 432
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMax:D

    const-string p1, "proteinMass_min"

    .line 433
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMin:D

    const-string p1, "muscleMass_max"

    .line 434
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMax:D

    const-string p1, "muscleMass_min"

    .line 435
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMin:D

    const-string p1, "bmr_max"

    .line 436
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMax:I

    const-string p1, "bmr_min"

    .line 437
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p4, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMin:I

    return-object p4
.end method

.method public static getBMI(DILcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 5

    .line 36
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 37
    invoke-virtual {p3}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getBMI(DIII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getBMR(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)I
    .registers 22

    .line 120
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 121
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getBMR(DIIDDIII)I

    move-result v0

    return v0
.end method

.method public static getBodyFatPercent(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 52
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 53
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 54
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 53
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getBodyFatPercent(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getBoneMass(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 136
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 137
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 138
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 137
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getBoneMass(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getKeysFromMap(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 493
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 494
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 495
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 496
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method

.method public static getMoisturePercent(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 153
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 154
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 155
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 154
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getMoisturePercent(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getMusclePercent(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 103
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 104
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 105
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 104
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getMusclePercent(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getObjectType(Ljava/lang/Object;)I
    .registers 2

    .line 513
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 518
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 522
    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    .line 526
    :cond_12
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    .line 530
    :cond_18
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1e

    const/4 p0, 0x5

    return p0

    .line 534
    :cond_1e
    instance-of v0, p0, [B

    if-eqz v0, :cond_24

    const/4 p0, 0x6

    return p0

    .line 536
    :cond_24
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    const/4 p0, 0x7

    return p0

    .line 538
    :cond_2a
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_31

    const/16 p0, 0x8

    return p0

    .line 540
    :cond_31
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_38

    const/16 p0, 0x9

    return p0

    .line 542
    :cond_38
    instance-of p0, p0, Ljava/lang/Short;

    if-eqz p0, :cond_3f

    const/16 p0, 0xa

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public static getPhysicalAge(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)I
    .registers 22

    .line 170
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 171
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 172
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 171
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getPhysicalAge(DIIDDIII)I

    move-result v0

    return v0
.end method

.method public static getProtein(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 187
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 188
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 189
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 188
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getProtein(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSkeletalMuscle(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 204
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 205
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 206
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 205
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getSkeletalMuscle(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getSubcutaneousFatPercent(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 69
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 70
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 71
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 70
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getSubcutaneousFatPercent(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getVisceralFat(DIIDDLcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;)D
    .registers 22

    .line 86
    invoke-static {}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->load()V

    .line 87
    invoke-virtual/range {p8 .. p8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->getValue()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->getValue()I

    move-result v9

    .line 88
    invoke-virtual/range {p10 .. p10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->getValue()I

    move-result v10

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 87
    invoke-static/range {v0 .. v10}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->native_getVisceralFat(DIIDDIII)D

    move-result-wide v0

    return-wide v0
.end method

.method private static load()V
    .registers 2

    sget-object v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->lock:Ljava/lang/Integer;

    .line 18
    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->isLoaded:Z

    if-nez v1, :cond_f

    const-string v1, "ICBodyFatAlgorithms"

    .line 21
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->isLoaded:Z

    .line 24
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static native native_calc(Ljava/util/HashMap;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_calc_other(Ljava/util/HashMap;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static native native_getBMI(DIII)D
.end method

.method private static native native_getBMR(DIIDDIII)I
.end method

.method private static native native_getBodyFatPercent(DIIDDIII)D
.end method

.method private static native native_getBoneMass(DIIDDIII)D
.end method

.method private static native native_getMoisturePercent(DIIDDIII)D
.end method

.method private static native native_getMusclePercent(DIIDDIII)D
.end method

.method private static native native_getPhysicalAge(DIIDDIII)I
.end method

.method private static native native_getProtein(DIIDDIII)D
.end method

.method private static native native_getSkeletalMuscle(DIIDDIII)D
.end method

.method private static native native_getSubcutaneousFatPercent(DIIDDIII)D
.end method

.method private static native native_getVisceralFat(DIIDDIII)D
.end method

.method public static version()Ljava/lang/String;
    .registers 1

    const-string v0, "1.3.0_build_1107_88457d18_20240612114706"

    return-object v0
.end method

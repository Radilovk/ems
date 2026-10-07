.class public final Lcom/isaigu/gymapp/bodytech/BtAus;
.super Ljava/lang/Object;
.source "BtAus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtAus$Ph;,
        Lcom/isaigu/gymapp/bodytech/BtAus$T;,
        Lcom/isaigu/gymapp/bodytech/BtAus$Pos;
    }
.end annotation


# static fields
.field private static final ABS:[I

.field public static final ACTIVE:I = 0x0

.field public static final ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

.field private static final BACK:[I

.field private static final HIPS:[I

.field public static final HOLD:I = 0x1

.field private static final LEGS:[I

.field private static final LEGS_GLUTES:[I

.field public static final PASSIVE:I = 0x1

.field public static final RAMP_DOWN:I = 0x2

.field public static final RAMP_UP:I = 0x0

.field private static final RARE:Ljava/lang/String; = "\u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

.field public static final REST:I = 0x3

.field private static final SHAPE:[I

.field public static final SINE:I = 0x1

.field public static final SQUARE:I = 0x0

.field public static final STEADY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 32

    .prologue
    .line 143
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_2a6

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->SHAPE:[I

    .line 144
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2b6

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS_GLUTES:[I

    .line 145
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2c2

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->HIPS:[I

    .line 146
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_2ce

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS:[I

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->ABS:[I

    .line 148
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_2d8

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->BACK:[I

    .line 153
    const/16 v1, 0x9

    new-array v0, v1, [Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move-object/from16 v18, v0

    const/4 v12, 0x0

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "atrophy"

    const-string v3, "\u0410\u0442\u0440\u043e\u0444\u0438\u044f \u0438 \u0446\u0438\u0440\u043a\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v4, "\u041f\u0440\u0438 \u043e\u0431\u0435\u0437\u0434\u0432\u0438\u0436\u0432\u0430\u043d\u0435 \u0438 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435: \u043f\u0430\u0437\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0438 \u043a\u0440\u044a\u0432\u043e\u0442\u043e\u043a\u0430."

    const-string v5, "\u0412\u0438\u0434\u0438\u043c\u0430, \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f; \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS:[I

    const/4 v7, 0x0

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u043f\u043e\u0441\u043b\u0435 \u0440\u0430\u0431\u043e\u0442\u0430 1 kHz \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0438 (10 \u0441 \u0442\u043e\u043a / 40 \u0441 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u2014 \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0437\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0435\u043d \u043c\u0443\u0441\u043a\u0443\u043b), \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043f\u043e\u043c\u043f\u0430 \u0438 \u0441\u0435\u0442\u0438\u0432\u043d\u043e \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435 4 kHz."

    const-string v9, "3\u20135 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u043f\u0440\u0438 \u043e\u0431\u0435\u0437\u0434\u0432\u0438\u0436\u0432\u0430\u043d\u0435; \u0438\u043d\u0430\u0447\u0435 \u043a\u0430\u0442\u043e \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430. \u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v10, "\u041f\u0430\u0441\u0432\u0430 \u0441 \u043f\u0430\u0441\u0438\u0432\u043d\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f (CPM) \u0438 \u043c\u0430\u0441\u0430\u0436."

    const/4 v11, 0x4

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x5

    .line 161
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xd

    const/4 v15, 0x2

    const/16 v16, 0x28

    invoke-static/range {v14 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus;->motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/4 v14, 0x6

    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->pump(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    const/4 v12, 0x1

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "lipolysis"

    const-string v3, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u043b\u0438\u043f\u043e\u043b\u0438\u0437\u0430"

    const-string v4, "\u0415\u043d\u0435\u0440\u0433\u043e\u0440\u0430\u0437\u0445\u043e\u0434 \u043e\u0442 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u0430, \u043f\u043e\u0441\u043b\u0435 \u0431\u0430\u0432\u043d\u0430 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f. \u041c\u0430\u0441\u0442\u0442\u0430 \u0441\u0435 \u0433\u043e\u0440\u0438 \u043e\u0442 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430 \u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u043b\u0435\u0434 \u0442\u043e\u0432\u0430, \u043d\u0435 \u043e\u0442 \u201e\u0447\u0435\u0441\u0442\u043e\u0442\u0430\u201c."

    const-string v5, "\u041f\u044a\u0440\u0432\u043e \u0440\u0430\u0431\u043e\u0442\u0430, \u043f\u043e\u0441\u043b\u0435 \u0441\u0430\u043c\u043e \u0433\u044a\u0434\u0435\u043b\u0438\u0447\u043a\u0430\u043d\u0435."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->SHAPE:[I

    const/4 v7, 0x0

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u0440\u0430\u0431\u043e\u0442\u0430 1 kHz (10 \u0441 / 30 \u0441), \u0431\u0430\u0432\u043d\u0430 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0438 10 Hz (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u043d\u0430 \u0444\u0430\u0437\u0430), \u0441\u0435\u0442\u0438\u0432\u043d\u043e \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435. \u0421\u043b\u0435\u0434 \u0441\u0435\u0430\u043d\u0441\u0430 \u2014 20\u201330 \u043c\u0438\u043d \u043b\u0435\u043a\u043e \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 (\u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043e\u043b\u0435\u043b\u043e): \u0442\u043e \u0435 \u0432\u0430\u0436\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442."

    const-string v9, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 8\u201312 \u0441\u0435\u0434\u043c\u0438\u0446\u0438. \u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v10, "\u0421\u043b\u0435\u0434 \u0441\u0435\u0430\u043d\u0441\u0430 \u2014 20\u201330 \u043c\u0438\u043d \u043b\u0435\u043a\u043e \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435."

    const/4 v11, 0x4

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x5

    .line 170
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xf

    const/4 v15, 0x2

    const/16 v16, 0x1e

    invoke-static/range {v14 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus;->motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/16 v14, 0xf

    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->tingle(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    const/16 v19, 0x2

    new-instance v20, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v21, "ifc-chronic"

    const-string v22, "\u0411\u043e\u043b\u043a\u0430 \u00b7 \u0445\u0440\u043e\u043d\u0438\u0447\u043d\u0430 (IFC)"

    const-string v23, "\u0414\u0432\u0430 \u0442\u043e\u043a\u0430 \u0441\u0435 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0432\u0430\u0442 \u0432 \u0442\u044a\u043a\u0430\u043d\u0442\u0430; \u0431\u0430\u0432\u0435\u043d \u0440\u0438\u0442\u044a\u043c 2 Hz, \u043f\u043e\u0441\u043b\u0435 \u043b\u044e\u043b\u0435\u0435\u043d\u0435 2\u201310 Hz, \u0437\u0430 \u0434\u0430 \u043d\u0435 \u0441\u0432\u0438\u043a\u043d\u0435 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v24, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435. \u0420\u0430\u0437\u043f\u043e\u043b\u043e\u0436\u0438 \u0434\u0432\u0435 \u0434\u0432\u043e\u0439\u043a\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0430\u043d\u043e \u043d\u0430\u0434 \u0431\u043e\u043b\u043d\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    sget-object v25, Lcom/isaigu/gymapp/bodytech/BtAus;->BACK:[I

    const/16 v26, 0x0

    const-string v27, "\u041a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u0441\u0435 \u0432\u0437\u0435\u043c\u0430\u0442 \u043f\u043e \u0434\u0432\u043e\u0439\u043a\u0438 (1+2, 3+4 \u2026): \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u0435 \u043d\u043e\u0441\u0435\u0449, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u0441\u044a\u0441 \u0441\u043c\u0435\u0441\u0435\u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430. \u041d\u0443\u0436\u043d\u0438 \u0441\u0430 2 \u0438\u043b\u0438 4 \u043a\u0430\u043d\u0430\u043b\u0430."

    const-string v28, "\u0412\u0441\u0435\u043a\u0438 \u0434\u0435\u043d \u0438\u043b\u0438 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d."

    const-string v29, "\u041d\u0435 \u0433\u043e \u043f\u0440\u0430\u0432\u0438 \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0441 \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d TENS \u043d\u0430 \u0441\u044a\u0449\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v2, "\u0411\u0430\u0432\u0435\u043d \u0440\u0438\u0442\u044a\u043c 2 Hz"

    const-string v3, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435."

    const/16 v4, 0x578

    const/16 v5, 0x15e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    aput-object v1, v30, v31

    const/16 v31, 0x1

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v2, "\u041b\u044e\u043b\u0435\u0435\u043d\u0435 2\u201310 Hz"

    const-string v3, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435; \u0440\u0438\u0442\u044a\u043c\u044a\u0442 \u0431\u0430\u0432\u043d\u043e \u0441\u0435 \u043c\u0435\u043d\u0438."

    const/16 v4, 0x578

    const/16 v5, 0x15e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v12, 0xa

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0xa

    const/16 v17, 0xa

    invoke-direct/range {v1 .. v17}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    aput-object v1, v30, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v20, v18, v19

    const/16 v19, 0x3

    new-instance v20, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v21, "ifc-acute"

    const-string v22, "\u0411\u043e\u043b\u043a\u0430 \u00b7 \u043e\u0441\u0442\u0440\u0430 (IFC)"

    const-string v23, "\u0411\u044a\u0440\u0437\u0430, \u043a\u0440\u0430\u0442\u043a\u0430 \u0430\u043d\u0430\u043b\u0433\u0435\u0437\u0438\u044f; \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0441\u0435 \u043b\u044e\u043b\u0435\u0435 80\u2013150 Hz, \u0437\u0430 \u0434\u0430 \u043d\u0435 \u0441\u0432\u0438\u043a\u043d\u0435 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v24, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435. \u0414\u0432\u0435 \u0434\u0432\u043e\u0439\u043a\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0430\u043d\u043e \u043d\u0430\u0434 \u0431\u043e\u043b\u043d\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    sget-object v25, Lcom/isaigu/gymapp/bodytech/BtAus;->BACK:[I

    const/16 v26, 0x0

    const-string v27, "\u041a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u043f\u043e \u0434\u0432\u043e\u0439\u043a\u0438 (1+2, 3+4 \u2026). \u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0441\u043c\u0435\u0441\u0432\u0430\u043d\u0435 \u0441\u0435 \u043b\u044e\u043b\u0435\u0435 80 \u2192 150 \u2192 80 Hz \u0437\u0430 8 \u0441."

    const-string v28, "\u0412\u0441\u0435\u043a\u0438 \u0434\u0435\u043d \u0438\u043b\u0438 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d."

    const-string v29, "\u041d\u0435 \u0433\u043e \u043f\u0440\u0430\u0432\u0438 \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0441 \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d TENS \u043d\u0430 \u0441\u044a\u0449\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v2, "\u041b\u044e\u043b\u0435\u0435\u043d\u0435 80\u2013150 Hz"

    const-string v3, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435."

    const/16 v4, 0x7d0

    const/16 v5, 0xfa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/16 v12, 0x14

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/16 v15, 0x50

    const/16 v16, 0x96

    const/16 v17, 0x8

    invoke-direct/range {v1 .. v17}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    aput-object v1, v30, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v20, v18, v19

    const/4 v12, 0x4

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "shape"

    const-string v3, "\u041e\u0444\u043e\u0440\u043c\u044f\u043d\u0435"

    const-string v4, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u0438 \u0442\u043e\u043d\u0443\u0441 \u043d\u0430 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435, \u043a\u0440\u0430\u043a\u0430, \u043a\u043e\u0440\u0435\u043c \u2014 \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v5, "\u0421\u0438\u043b\u043d\u0438 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u0438, \u043f\u043e\u0441\u043b\u0435 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->SHAPE:[I

    const/4 v7, 0x0

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u0440\u0430\u0431\u043e\u0442\u0430 1 kHz \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0438 2 ms (10 \u0441 \u0442\u043e\u043a / 30 \u0441 \u043f\u043e\u0447\u0438\u0432\u043a\u0430), \u0441\u0435\u0442\u0438\u0432\u043d\u043e \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435 4 kHz."

    const-string v9, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 6\u20138 \u0441\u0435\u0434\u043c\u0438\u0446\u0438. \u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v10, "\u041d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0441 \u0445\u0440\u0430\u043d\u0435\u043d\u0435 \u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435; \u0441\u0430\u043c\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430\u0442\u0430 \u043d\u0435 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430."

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x6

    .line 198
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xe

    const/4 v15, 0x2

    const/16 v16, 0x1e

    invoke-static/range {v14 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus;->motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/4 v14, 0x6

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    const/4 v12, 0x5

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "tone"

    const-string v3, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435"

    const-string v4, "\u041f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430 \u0434\u043e\u0437\u0430: \u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u0430\u043a\u0435\u0442\u0438 \u0437\u0430 \u043f\u043e-\u0441\u0438\u043b\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f. \u0421\u0430\u043c\u043e \u0441\u043b\u0435\u0434 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u0441\u0435\u0430\u043d\u0441\u0430 \u201e\u041e\u0444\u043e\u0440\u043c\u044f\u043d\u0435\u201c."

    const-string v5, "\u041c\u043d\u043e\u0433\u043e \u0441\u0438\u043b\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f, \u043a\u043e\u044f\u0442\u043e \u043e\u0449\u0435 \u0441\u0435 \u0442\u044a\u0440\u043f\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS_GLUTES:[I

    const/4 v7, 0x1

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u0441\u0438\u043b\u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 1 kHz \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0438 4 ms (10 \u0441 \u0442\u043e\u043a / 30 \u0441 \u043f\u043e\u0447\u0438\u0432\u043a\u0430), \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435 4 kHz."

    const-string v9, "1\u20132 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u0441\u043b\u0435\u0434 \u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f. \u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v10, "\u041d\u0435 \u0432 \u0434\u0435\u043d\u044f \u043d\u0430 \u0442\u0435\u0436\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0437\u0430 \u0441\u044a\u0449\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438."

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x6

    .line 205
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xc

    const/4 v15, 0x4

    const/16 v16, 0x1e

    invoke-static/range {v14 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus;->motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    const/4 v12, 0x6

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "pump"

    const-string v3, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043f\u043e\u043c\u043f\u0430"

    const-string v4, "\u0420\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u0434\u0432\u0430\u0442\u0430 \u043a\u0440\u0430\u043a\u0430 \u2014 \u043f\u043e\u0434\u043f\u043e\u043c\u0430\u0433\u0430 \u0432\u0440\u044a\u0449\u0430\u043d\u0435\u0442\u043e \u043d\u0430 \u043a\u0440\u044a\u0432 \u0438 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438. \u041d\u0435 \u0435 \u043b\u0435\u0447\u0435\u043d\u0438\u0435 \u043d\u0430 \u043b\u0438\u043c\u0444\u0435\u0434\u0435\u043c."

    const-string v5, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435, \u043a\u0430\u0442\u043e \u0445\u043e\u0434\u0435\u043d\u0435."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS:[I

    const/4 v7, 0x0

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u043f\u043e\u043c\u043f\u0430 7 Hz (4 \u0441 \u0441\u0442\u044f\u0433\u0430\u043d\u0435 / 4 \u0441 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435), \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435 4 kHz. \u041a\u0440\u0430\u043a\u0430\u0442\u0430 \u043b\u0435\u043a\u043e \u043d\u0430\u0433\u043e\u0440\u0435."

    const-string v9, "3\u20135 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e."

    const-string v10, "\u041f\u0430\u0441\u0432\u0430 \u0441 \u0440\u044a\u0447\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436 \u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u0441\u043b\u0435\u0434 \u0441\u0435\u0430\u043d\u0441\u0430."

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x6

    .line 212
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xc

    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->pump(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/4 v14, 0x7

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    const/4 v12, 0x7

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "cellulite"

    const-string v3, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442 \u2014 \u043f\u043e\u0434\u043a\u0440\u0435\u043f\u0430"

    const-string v4, "\u0422\u043e\u043d\u0443\u0441, \u043a\u0440\u044a\u0432\u043e\u0442\u043e\u043a \u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0432 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u043a\u0440\u0430\u043a\u0430. \u041f\u043e\u0434\u043a\u0440\u0435\u043f\u0430, \u043d\u0435 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e \u043b\u0435\u0447\u0435\u043d\u0438\u0435."

    const-string v5, "\u0420\u0430\u0431\u043e\u0442\u0430, \u043f\u043e\u0441\u043b\u0435 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->HIPS:[I

    const/4 v7, 0x0

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u0440\u0430\u0431\u043e\u0442\u0430 1 kHz \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0438 2 ms (10 \u0441 / 30 \u0441), \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435 4 kHz (\u043f\u043e-\u0434\u044a\u043b\u0433\u043e)."

    const-string v9, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 8\u201310 \u0441\u0435\u0430\u043d\u0441\u0430. \u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v10, "\u0421 \u043c\u0430\u0441\u0430\u0436, \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435, \u0445\u0440\u0430\u043d\u0435\u043d\u0435."

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x6

    .line 219
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xd

    const/4 v15, 0x2

    const/16 v16, 0x1e

    invoke-static/range {v14 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus;->motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    const/16 v12, 0x8

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "abs"

    const-string v3, "\u041a\u043e\u0440\u0435\u043c"

    const-string v4, "\u0420\u0430\u0431\u043e\u0442\u0430 \u043d\u0430 \u043a\u043e\u0440\u0435\u043c\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v5, "\u0421\u0438\u043b\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u043a\u043e\u0440\u0435\u043c\u0430 \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430."

    sget-object v6, Lcom/isaigu/gymapp/bodytech/BtAus;->ABS:[I

    const/4 v7, 0x0

    const-string v8, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f 7 Hz, \u0440\u0430\u0431\u043e\u0442\u0430 1 kHz \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0438 2 ms (10 \u0441 / 30 \u0441), \u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435 4 kHz. \u041d\u0435 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435."

    const-string v9, "2\u20133 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e. \u0414\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438 (\u0441 \u0440\u0430\u0431\u043e\u0442\u0430) \u2014 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 8\u201310 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u043f\u043e\u043d\u0435 4 \u0434\u043d\u0438 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445. \u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0438 \u0431\u043e\u043b\u043a\u043e\u0443\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u0449\u0438\u0442\u0435 \u0441\u0435 \u0431\u0440\u043e\u044f\u0442 \u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v10, "\u041d\u0435 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442; \u043d\u0435 \u043d\u0430 \u043f\u044a\u043b\u0435\u043d \u0441\u0442\u043e\u043c\u0430\u0445."

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v13, 0x0

    const/4 v14, 0x6

    .line 226
    invoke-static {v14}, Lcom/isaigu/gymapp/bodytech/BtAus;->adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const/16 v14, 0xd

    const/4 v15, 0x2

    const/16 v16, 0x1e

    invoke-static/range {v14 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus;->motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/bodytech/BtAus;->sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;)V

    aput-object v1, v18, v12

    sput-object v18, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 153
    return-void

    .line 143
    :array_2a6
    .array-data 4
        0x8
        0x0
        0x2
        0x9
        0x1
        0x7
    .end array-data

    .line 144
    :array_2b6
    .array-data 4
        0x0
        0x2
        0x9
        0x8
    .end array-data

    .line 145
    :array_2c2
    .array-data 4
        0x8
        0x0
        0x2
        0x9
    .end array-data

    .line 146
    :array_2ce
    .array-data 4
        0x0
        0x2
        0x9
    .end array-data

    .line 148
    :array_2d8
    .array-data 4
        0x7
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adapt(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
    .registers 18

    .prologue
    .line 112
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v1, "\u0410\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f"

    const-string v2, "\u041b\u0435\u043a\u043e \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0435. \u0412\u0434\u0438\u0433\u0430\u0439 \u0431\u0430\u0432\u043d\u043e, \u0434\u043e\u043a\u0430\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u044f\u0441\u043d\u043e \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430."

    const/4 v3, 0x7

    const/16 v4, 0x15e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, p0

    invoke-direct/range {v0 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    return-object v0
.end method

.method public static at(IIID)Lcom/isaigu/gymapp/bodytech/BtAus$Pos;
    .registers 16

    .prologue
    .line 283
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_8

    const-wide/16 p3, 0x0

    .line 284
    :cond_8
    if-lez p1, :cond_c

    if-gtz p0, :cond_2f

    .line 285
    :cond_c
    if-lez p2, :cond_25

    int-to-double v0, p2

    cmpg-double v0, p3, v0

    if-gez v0, :cond_25

    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x0

    int-to-double v2, p2

    sub-double/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v4, p2

    div-double v4, p3, v4

    double-to-float v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    .line 295
    :goto_24
    return-object v0

    .line 286
    :cond_25
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    goto :goto_24

    .line 288
    :cond_2f
    add-int v4, p0, p1

    .line 289
    int-to-double v0, v4

    rem-double v6, p3, v0

    .line 290
    int-to-double v0, p2

    .line 291
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v0

    int-to-double v8, p0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_ab

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    move-wide v2, v0

    .line 292
    :goto_42
    cmpg-double v0, v6, v2

    if-gez v0, :cond_61

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v4, 0x0

    sub-double v8, v2, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    const-wide/16 v8, 0x0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_5e

    div-double v2, v6, v2

    double-to-float v0, v2

    :goto_59
    invoke-direct {v1, v4, v5, v0}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    move-object v0, v1

    goto :goto_24

    :cond_5e
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_59

    .line 293
    :cond_61
    int-to-double v0, p0

    sub-double/2addr v0, v2

    cmpg-double v0, v6, v0

    if-gez v0, :cond_79

    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x1

    int-to-double v4, p0

    sub-double v2, v4, v2

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    goto :goto_24

    .line 294
    :cond_79
    int-to-double v0, p0

    cmpg-double v0, v6, v0

    if-gez v0, :cond_9b

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v4, 0x2

    int-to-double v8, p0

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    const-wide/16 v8, 0x0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_99

    int-to-double v8, p0

    sub-double v6, v8, v6

    div-double v2, v6, v2

    double-to-float v0, v2

    :goto_94
    invoke-direct {v1, v4, v5, v0}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    move-object v0, v1

    goto :goto_24

    :cond_99
    const/4 v0, 0x0

    goto :goto_94

    .line 295
    :cond_9b
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x3

    int-to-double v2, v4

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    goto/16 :goto_24

    :cond_ab
    move-wide v2, v0

    goto :goto_42
.end method

.method public static beatAt(IIID)D
    .registers 12

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 347
    if-le p1, p0, :cond_6

    if-gtz p2, :cond_8

    :cond_6
    int-to-double v0, p0

    .line 350
    :goto_7
    return-wide v0

    .line 348
    :cond_8
    int-to-double v0, p2

    rem-double v0, p3, v0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 349
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1b

    mul-double/2addr v0, v4

    .line 350
    :goto_14
    int-to-double v2, p0

    sub-int v4, p1, p0

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_7

    .line 349
    :cond_1b
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    mul-double/2addr v0, v4

    goto :goto_14
.end method

.method public static burst(II)[I
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 252
    if-lez p0, :cond_5

    if-gtz p1, :cond_b

    :cond_5
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 255
    :goto_a
    return-object v0

    .line 253
    :cond_b
    const/16 v0, 0x3e8

    div-int v1, v0, p0

    .line 254
    if-lt p1, v1, :cond_17

    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_a

    .line 255
    :cond_17
    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 v2, 0x1

    sub-int/2addr v1, p1

    aput v1, v0, v2

    goto :goto_a

    .line 252
    nop

    :array_22
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 254
    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static byId(Ljava/lang/String;)Lcom/isaigu/gymapp/bodytech/BtAus$T;
    .registers 6

    .prologue
    .line 242
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 243
    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->id:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 245
    :goto_11
    return-object v0

    .line 242
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 245
    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static ifcB(II)I
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 339
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v2

    .line 340
    const-wide v4, 0x412e848000000000L    # 1000000.0

    int-to-double v6, p1

    add-double/2addr v2, v6

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 341
    if-ge v1, v0, :cond_1b

    .line 342
    :goto_15
    const v1, 0xf4240

    div-int v0, v1, v0

    return v0

    :cond_1b
    move v0, v1

    goto :goto_15
.end method

.method public static ifcPair(II)[I
    .registers 16

    .prologue
    .line 319
    .line 320
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 321
    const v2, 0xf4240

    div-int v9, v2, p0

    .line 322
    int-to-double v2, v9

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move v8, v2

    move v4, p0

    move v6, p0

    :goto_15
    int-to-double v2, v9

    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v10

    double-to-int v2, v2

    if-gt v8, v2, :cond_5c

    .line 323
    const/16 v2, 0x64

    if-ge v8, v2, :cond_27

    .line 322
    :cond_23
    :goto_23
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_15

    .line 324
    :cond_27
    const v2, 0xf4240

    div-int v7, v2, v8

    .line 325
    const-wide v2, 0x412e848000000000L    # 1000000.0

    int-to-double v10, v8

    div-double/2addr v2, v10

    .line 326
    invoke-static {v7, p1}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcB(II)I

    move-result v5

    .line 327
    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v10

    sub-double v2, v10, v2

    int-to-double v10, p1

    sub-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v10

    sub-int v10, v8, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 328
    cmpg-double v10, v2, v0

    if-gez v10, :cond_23

    move-wide v0, v2

    move v4, v5

    move v6, v7

    .line 331
    goto :goto_23

    .line 334
    :cond_5c
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    return-object v0
.end method

.method static motor(III)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
    .registers 21

    .prologue
    .line 118
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const/4 v2, 0x4

    move/from16 v0, p1

    if-lt v0, v2, :cond_26

    const-string v2, "\u0421\u0438\u043b\u043d\u0430 \u0440\u0430\u0431\u043e\u0442\u0430"

    :goto_9
    const-string v3, "\u0421\u0438\u043b\u043d\u0430, \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u0438\u0440\u0430\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430 \u0438 \u043f\u0430\u0440\u0435\u043d\u0435 \u2014 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e, \u043a\u043e\u043b\u043a\u043e\u0442\u043e \u0441\u0435 \u0442\u044a\u0440\u043f\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e."

    const/16 v4, 0x3e8

    const/16 v5, 0x1f4

    const/16 v6, 0x32

    const/4 v8, 0x1

    const/16 v9, 0xa

    const/4 v11, 0x2

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v7, p1

    move/from16 v10, p2

    move/from16 v12, p0

    invoke-direct/range {v1 .. v17}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    return-object v1

    :cond_26
    const-string v2, "\u0420\u0430\u0431\u043e\u0442\u0430"

    goto :goto_9
.end method

.method public static pct(IFI)I
    .registers 7

    .prologue
    const/16 v0, 0x63

    const/4 v1, 0x1

    .line 300
    int-to-float v2, p0

    mul-float/2addr v2, p1

    int-to-float v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 301
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_21

    if-ge v2, v1, :cond_21

    if-lez p0, :cond_21

    if-lez p2, :cond_21

    .line 302
    :goto_19
    if-gez v1, :cond_1d

    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    if-gt v1, v0, :cond_1c

    move v0, v1

    goto :goto_1c

    :cond_21
    move v1, v2

    goto :goto_19
.end method

.method public static phaseAt([ID)[I
    .registers 12

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 231
    move v0, v1

    move v2, v1

    .line 232
    :goto_5
    array-length v3, p0

    if-ge v0, v3, :cond_1e

    .line 233
    aget v3, p0, v0

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v2

    .line 234
    int-to-double v4, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_1a

    new-array v3, v7, [I

    aput v0, v3, v1

    aput v2, v3, v6

    move-object v0, v3

    .line 237
    :goto_19
    return-object v0

    .line 232
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_5

    .line 237
    :cond_1e
    new-array v0, v7, [I

    const/4 v3, -0x1

    aput v3, v0, v1

    aput v2, v0, v6

    goto :goto_19
.end method

.method static pump(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
    .registers 18

    .prologue
    .line 125
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043f\u043e\u043c\u043f\u0430"

    const-string v2, "\u0420\u0438\u0442\u043c\u0438\u0447\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u0438 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435, \u0432\u0438\u0434\u0438\u043c\u043e, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430."

    const/4 v3, 0x7

    const/16 v4, 0x15e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, p0

    invoke-direct/range {v0 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    return-object v0
.end method

.method public static realHz(I)D
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 309
    const v1, 0xf4240

    if-ge p0, v0, :cond_7

    move p0, v0

    :cond_7
    div-int v0, v1, p0

    .line 310
    const-wide v2, 0x412e848000000000L    # 1000000.0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method static sensory(II)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
    .registers 19

    .prologue
    .line 131
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v1, "\u0423\u0441\u043f\u043e\u043a\u043e\u044f\u0432\u0430\u043d\u0435"

    const-string v2, "\u042f\u0441\u043d\u043e \u0441\u0435\u0442\u0438\u0432\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u0431\u0435\u0437 \u0441\u0432\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430."

    const/16 v3, 0xfa0

    const/16 v4, 0x7d

    const/16 v5, 0x32

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v6, p1

    move/from16 v11, p0

    invoke-direct/range {v0 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    return-object v0
.end method

.method static tingle(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
    .registers 18

    .prologue
    .line 137
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    const-string v1, "\u0411\u0430\u0432\u043d\u0430 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v2, "\u0421\u0430\u043c\u043e \u0433\u044a\u0434\u0435\u043b\u0438\u0447\u043a\u0430\u043d\u0435, \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430."

    const/16 v3, 0x3e8

    const/16 v4, 0x1f4

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, p0

    invoke-direct/range {v0 .. v16}, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIZIII)V

    return-object v0
.end method

.method public static widthFor(II)I
    .registers 4

    .prologue
    const/16 v0, 0x32

    .line 260
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v1

    .line 261
    if-ge p1, v0, :cond_a

    move p1, v0

    :cond_9
    :goto_9
    return p1

    :cond_a
    if-le p1, v1, :cond_9

    move p1, v1

    goto :goto_9
.end method

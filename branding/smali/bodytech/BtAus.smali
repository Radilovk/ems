.class public final Lcom/isaigu/gymapp/bodytech/BtAus;
.super Ljava/lang/Object;
.source "BtAus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtAus$Pos;,
        Lcom/isaigu/gymapp/bodytech/BtAus$T;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x0

.field public static final ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

.field private static final BACK:[I

.field private static final BODY:[I

.field private static final CALF_LEGS:[I

.field public static final HOLD:I = 0x1

.field private static final LEGS:[I

.field private static final LEGS_ABS:[I

.field public static final PASSIVE:I = 0x1

.field public static final RAMP_DOWN:I = 0x2

.field public static final RAMP_UP:I = 0x0

.field public static final REST:I = 0x3

.field private static final SHAPE:[I

.field public static final STEADY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .prologue
    .line 73
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1b6

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS:[I

    .line 74
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1c0

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS_ABS:[I

    .line 75
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1cc

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->BODY:[I

    .line 76
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1da

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->SHAPE:[I

    .line 77
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1e8

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->CALF_LEGS:[I

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1f2

    sput-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->BACK:[I

    .line 80
    const/16 v1, 0x8

    new-array v0, v1, [Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "strength"

    const-string v3, "\u0421\u0438\u043b\u0430 \u0438 \u0445\u0438\u043f\u0435\u0440\u0442\u0440\u043e\u0444\u0438\u044f"

    const/4 v4, 0x0

    const-string v5, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0441\u0438\u043b\u0430 \u0438 \u043e\u0431\u0435\u043c; \u043f\u0430\u0437\u0438 \u043e\u0442 \u0437\u0430\u0433\u0443\u0431\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b."

    const-string v6, "\u0421\u0438\u043b\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f, \u043a\u043e\u044f\u0442\u043e \u043e\u0449\u0435 \u0441\u0435 \u0442\u044a\u0440\u043f\u0438 \u2014 \u0432\u0434\u0438\u0433\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430 \u044f\u0441\u043d\u043e."

    const/16 v7, 0x3e8

    const/16 v8, 0x1f4

    const/16 v9, 0x32

    const/4 v10, 0x4

    const/16 v11, 0xa

    const/16 v12, 0x28

    const/4 v13, 0x2

    const/16 v14, 0x12

    const/4 v15, 0x5

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS:[I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "1) \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430 5\u201310 \u043c\u0438\u043d; 2) 10 \u043c\u0438\u043d \u0441\u0430\u043c\u043e \u0442\u043e\u043a \u0432\u044a\u0440\u0445\u0443 \u0431\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435; 3) \u0442\u043e\u043a + \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435: \u043a\u043b\u0435\u043a 3\u00d78\u201312, \u0440\u0430\u0437\u0433\u044a\u0432\u0430\u043d\u0435 3\u00d710\u201315, \u0441\u0433\u044a\u0432\u0430\u043d\u0435 3\u00d710\u201315, \u043d\u0430\u043f\u0430\u0434\u0438 2\u00d710 \u043d\u0430 \u043a\u0440\u0430\u043a, \u043f\u043e\u0447\u0438\u0432\u043a\u0430 60\u201390 \u0441; 4) \u0440\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435 5 \u043c\u0438\u043d. \u041f\u0440\u043e\u0433\u0440\u0435\u0441\u0438\u044f: \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u043e \u043d\u0438\u0432\u043e, \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043a\u044a\u043c 1:2 (10 \u0441 \u0442\u043e\u043a / 20 \u0441), \u043f\u043e\u0432\u0435\u0447\u0435 \u0442\u0435\u0436\u0435\u0441\u0442."

    const-string v22, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 4\u20136 \u0441\u0435\u0434\u043c\u0438\u0446\u0438. \u041a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f 10 \u0441, \u043f\u043e\u0447\u0438\u0432\u043a\u0430 30\u201350 \u0441 (1:3 \u2013 1:5), 15\u201320 \u043c\u0438\u043d \u043d\u0430 \u0433\u0440\u0443\u043f\u0430."

    const-string v23, "\u041d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0432\u043e\u043b\u0435\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x1

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "hiit"

    const-string v3, "HIIT + \u0442\u043e\u043a (\u043b\u0438\u043f\u043e\u043b\u0438\u0437\u0430)"

    const/4 v4, 0x0

    const-string v5, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u0438 \u0433\u043b\u044e\u043a\u043e\u0437\u0435\u043d \u0442\u043e\u043b\u0435\u0440\u0430\u043d\u0441: \u0442\u043e\u043a \u043f\u0440\u0435\u0434\u0438 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v6, "\u041b\u0435\u043a\u043e, \u0440\u0430\u0432\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u0434\u043e \u043b\u0435\u043a\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f \u2014 \u0431\u0435\u0437 \u0434\u0430 \u043f\u0440\u0435\u0447\u0438 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435\u0442\u043e."

    const/16 v7, 0x3e8

    const/16 v8, 0x1f4

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x12

    const/4 v15, 0x4

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->BODY:[I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "1) 15\u201320 \u043c\u0438\u043d \u0442\u043e\u043a \u0432\u044a\u0440\u0445\u0443 \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u0433\u0440\u0443\u043f\u0438 (\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e); 2) HIIT: \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430 5 \u043c\u0438\u043d, 4\u20138 \u0446\u0438\u043a\u044a\u043b\u0430 \u043f\u043e 30 \u0441 \u0441\u0438\u043b\u043d\u043e / 90 \u0441 \u043b\u0435\u043a\u043e, \u043e\u0445\u043b\u0430\u0436\u0434\u0430\u043d\u0435 5 \u043c\u0438\u043d; 3) \u0440\u0430\u0437\u0442\u044f\u0433\u0430\u043d\u0435. \u0417\u0430 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u043e \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435: \u043f\u0430\u043a\u0435\u0442\u0438 50 Hz, 10 \u0441 \u0442\u043e\u043a / 30 \u0441 \u043f\u043e\u0447\u0438\u0432\u043a\u0430."

    const-string v22, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 8\u201312 \u0441\u0435\u0434\u043c\u0438\u0446\u0438."

    const-string v23, "\u0421 HIIT: \u0441\u044a\u0447\u0435\u0442\u0430\u043d\u0438, \u0434\u0430\u0432\u0430\u0442 \u043f\u043e-\u0441\u0438\u043b\u043d\u043e \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u0438 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u043e \u0438\u0437\u0447\u0438\u0441\u0442\u0432\u0430\u043d\u0435."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x2

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "prediabetes"

    const-string v3, "\u041f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442 / \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u0435\u043d \u0441\u0438\u043d\u0434\u0440\u043e\u043c"

    const/4 v4, 0x0

    const-string v5, "\u0418\u043d\u0441\u0443\u043b\u0438\u043d\u043e\u0432\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442 \u0438 \u0443\u0441\u0432\u043e\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0433\u043b\u044e\u043a\u043e\u0437\u0430."

    const-string v6, "\u0412\u0438\u0434\u0438\u043c\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f, \u043a\u043e\u044f\u0442\u043e \u0441\u0435 \u0442\u044a\u0440\u043f\u0438 \u0431\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435."

    const/16 v7, 0x3e8

    const/16 v8, 0x1f4

    const/16 v9, 0x32

    const/4 v10, 0x4

    const/16 v11, 0xa

    const/16 v12, 0x1e

    const/4 v13, 0x2

    const/16 v14, 0x1e

    const/4 v15, 0x5

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->LEGS_ABS:[I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "30 \u043c\u0438\u043d \u0442\u043e\u043a \u0432\u044a\u0440\u0445\u0443 \u0434\u043e\u043b\u043d\u0438 \u043a\u0440\u0430\u0439\u043d\u0438\u0446\u0438 \u0438 \u043a\u043e\u0440\u0435\u043c, \u0446\u0438\u043a\u044a\u043b 10 \u0441 / 30 \u0441. \u0417\u0430\u0435\u0434\u043d\u043e \u0441\u044a\u0441 150 \u043c\u0438\u043d \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u0443\u043c\u0435\u0440\u0435\u043d\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442 (\u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043e\u043b\u0435\u043b\u043e)."

    const-string v22, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, \u043f\u043e\u043d\u0435 4 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 (12 \u0441\u0435\u0430\u043d\u0441\u0430)."

    const-string v23, "150 \u043c\u0438\u043d/\u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e \u0443\u043c\u0435\u0440\u0435\u043d\u043e \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x3

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "cellulite"

    const-string v3, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442 \u0438 \u043b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436"

    const/4 v4, 0x0

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u0442\u043e\u043a \u0438 \u043b\u0438\u043c\u0444\u0430 \u0432 \u0431\u0435\u0434\u0440\u0430, \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435, \u043a\u043e\u0440\u0435\u043c, \u0445\u044a\u043b\u0431\u043e\u0446\u0438."

    const-string v6, "\u041f\u043e\u0434\u0440\u0443\u0441\u0432\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 (\u043e\u043a\u043e\u043b\u043e 4\u20136 \u043e\u0442 10)."

    const/16 v7, 0x3e8

    const/16 v8, 0x1f4

    const/16 v9, 0x64

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/16 v14, 0x19

    const/4 v15, 0x3

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->SHAPE:[I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "20\u201330 \u043c\u0438\u043d \u043d\u0430 \u0431\u0435\u0434\u0440\u0430, \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435, \u043a\u043e\u0440\u0435\u043c \u0438 \u0445\u044a\u043b\u0431\u043e\u0446\u0438; \u043f\u0430\u043a\u0435\u0442\u0438 100 Hz, 5 \u0441 \u0442\u043e\u043a / 5 \u0441 \u043f\u0430\u0443\u0437\u0430 (\u0438\u043b\u0438 \u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e)."

    const-string v22, "3 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 8\u201310 \u0441\u0435\u0430\u043d\u0441\u0430."

    const-string v23, "\u041f\u0430\u0441\u0432\u0430 \u0441 \u043a\u0430\u0440\u0431\u043e\u043a\u0441\u0438\u0442\u0435\u0440\u0430\u043f\u0438\u044f, \u0443\u043b\u0442\u0440\u0430\u0437\u0432\u0443\u043a\u043e\u0432\u0430 \u043b\u0438\u043f\u043e\u043b\u0438\u0437\u0430, \u0440\u044a\u0447\u0435\u043d \u043b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x4

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "atrophy"

    const-string v3, "\u0410\u0442\u0440\u043e\u0444\u0438\u044f \u0438 \u0446\u0438\u0440\u043a\u0443\u043b\u0430\u0446\u0438\u044f"

    const/4 v4, 0x1

    const-string v5, "\u041f\u0440\u0438 \u043e\u0431\u0435\u0437\u0434\u0432\u0438\u0436\u0432\u0430\u043d\u0435 \u0438 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435: \u043f\u0430\u0437\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0430 \u0438 \u043a\u0440\u044a\u0432\u043e\u0442\u043e\u043a\u0430."

    const-string v6, "\u041b\u0435\u043a\u0430, \u0432\u0438\u0434\u0438\u043c\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f."

    const/16 v7, 0x3e8

    const/16 v8, 0x1f4

    const/16 v9, 0x32

    const/4 v10, 0x4

    const/16 v11, 0xa

    const/16 v12, 0x28

    const/4 v13, 0x2

    const/16 v14, 0x19

    const/4 v15, 0x3

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->CALF_LEGS:[I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "20\u201330 \u043c\u0438\u043d \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430, \u0446\u0438\u043a\u044a\u043b 10 \u0441 / 30\u201350 \u0441, \u043f\u043b\u0430\u0432\u043d\u043e \u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u0438 \u0441\u0432\u0430\u043b\u044f\u043d\u0435 2 \u0441."

    const-string v22, "\u0412\u0441\u0435\u043a\u0438 \u0434\u0435\u043d \u0438\u043b\u0438 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e."

    const-string v23, "\u041f\u0430\u0441\u0432\u0430 \u0441 \u043f\u0430\u0441\u0438\u0432\u043d\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f (CPM) \u0438 \u043c\u0430\u0441\u0430\u0436."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x5

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "lipolysis"

    const-string v3, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u043b\u0438\u043f\u043e\u043b\u0438\u0437\u0430"

    const/4 v4, 0x1

    const-string v5, "\u0411\u0430\u0432\u043d\u0430, \u0434\u044a\u043b\u0433\u0430 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f \u0432\u044a\u0440\u0445\u0443 \u043c\u0430\u0441\u0442\u043d\u0438 \u0437\u043e\u043d\u0438."

    const-string v6, "\u0421\u0430\u043c\u043e \u0433\u044a\u0434\u0435\u043b\u0438\u0447\u043a\u0430\u043d\u0435 (\u0442\u0438\u043d\u043a\u044a\u043b), \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430."

    const/16 v7, 0x3e8

    const/16 v8, 0x1f4

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x28

    const/4 v15, 0x3

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->SHAPE:[I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "30\u201345 \u043c\u0438\u043d \u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e, \u043f\u0430\u043a\u0435\u0442\u0438 10 Hz \u00d7 2 ms. \u0421\u043b\u0435\u0434 \u0441\u0435\u0430\u043d\u0441\u0430 20\u201330 \u043c\u0438\u043d \u043b\u0435\u043a\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442."

    const-string v22, "\u0412\u0441\u0435\u043a\u0438 \u0434\u0435\u043d \u0438\u043b\u0438 5 \u043f\u044a\u0442\u0438 \u0441\u0435\u0434\u043c\u0438\u0447\u043d\u043e, 8\u201312 \u0441\u0435\u0434\u043c\u0438\u0446\u0438."

    const-string v23, "\u0421\u043b\u0435\u0434 \u0441\u0435\u0430\u043d\u0441\u0430 \u2014 \u043b\u0435\u043a\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x6

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "ifc-chronic"

    const-string v3, "\u0411\u043e\u043b\u043a\u0430 \u00b7 \u0445\u0440\u043e\u043d\u0438\u0447\u043d\u0430 (IFC)"

    const/4 v4, 0x1

    const-string v5, "\u0414\u0432\u0430 \u0442\u043e\u043a\u0430 \u0441\u0435 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0432\u0430\u0442 \u0432 \u0442\u044a\u043a\u0430\u043d\u0442\u0430; \u0431\u0430\u0432\u0435\u043d \u0440\u0438\u0442\u044a\u043c 2 Hz \u0434\u0430\u0432\u0430 \u0434\u044a\u043b\u0433\u043e \u043e\u0431\u043b\u0435\u043a\u0447\u0435\u043d\u0438\u0435."

    const-string v6, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435. \u0420\u0430\u0437\u043f\u043e\u043b\u043e\u0436\u0438 \u0434\u0432\u0435 \u0434\u0432\u043e\u0439\u043a\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0430\u043d\u043e \u043d\u0430\u0434 \u0431\u043e\u043b\u043d\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    const/16 v7, 0x578

    const/16 v8, 0x15e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x19

    const/4 v15, 0x2

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->BACK:[I

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x0

    const-string v21, "\u041a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u0441\u0435 \u0432\u0437\u0435\u043c\u0430\u0442 \u043f\u043e \u0434\u0432\u043e\u0439\u043a\u0438 (1+2, 3+4 \u2026): \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u0435 \u043d\u043e\u0441\u0435\u0449, \u0432\u0442\u043e\u0440\u0438\u044f\u0442 \u2014 \u0441\u044a\u0441 \u0441\u043c\u0435\u0441\u0435\u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430. 25 \u043c\u0438\u043d; \u043d\u0443\u0436\u043d\u0438 \u0441\u0430 2 \u0438\u043b\u0438 4 \u043a\u0430\u043d\u0430\u043b\u0430."

    const-string v22, "\u0412\u0441\u0435\u043a\u0438 \u0434\u0435\u043d \u0438\u043b\u0438 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d."

    const-string v23, "\u041d\u0435 \u0433\u043e \u043f\u0440\u0430\u0432\u0438 \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0441 \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d TENS \u043d\u0430 \u0441\u044a\u0449\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    const/16 v25, 0x7

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const-string v2, "ifc-acute"

    const-string v3, "\u0411\u043e\u043b\u043a\u0430 \u00b7 \u043e\u0441\u0442\u0440\u0430 (IFC)"

    const/4 v4, 0x1

    const-string v5, "\u0411\u044a\u0440\u0437\u0430, \u043a\u0440\u0430\u0442\u043a\u0430 \u0430\u043d\u0430\u043b\u0433\u0435\u0437\u0438\u044f; \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0441\u0435 \u043b\u044e\u043b\u0435\u0435 80\u2013100 Hz, \u0437\u0430 \u0434\u0430 \u043d\u0435 \u0441\u0432\u0438\u043a\u043d\u0435 \u0442\u044f\u043b\u043e\u0442\u043e."

    const-string v6, "\u0421\u0430\u043c\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u043e\u0434 \u043f\u0440\u0430\u0433\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435. \u0414\u0432\u0435 \u0434\u0432\u043e\u0439\u043a\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0430\u043d\u043e \u043d\u0430\u0434 \u0431\u043e\u043b\u043d\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    const/16 v7, 0x7d0

    const/16 v8, 0xfa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x14

    const/4 v15, 0x2

    sget-object v16, Lcom/isaigu/gymapp/bodytech/BtAus;->BACK:[I

    const/16 v17, 0x1

    const/16 v18, 0x50

    const/16 v19, 0x64

    const/16 v20, 0x6

    const-string v21, "\u041a\u0430\u043d\u0430\u043b\u0438\u0442\u0435 \u043f\u043e \u0434\u0432\u043e\u0439\u043a\u0438 (1+2, 3+4 \u2026). 20 \u043c\u0438\u043d; \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043d\u0430 \u0441\u043c\u0435\u0441\u0432\u0430\u043d\u0435 \u0441\u0435 \u043b\u044e\u043b\u0435\u0435 80 \u2192 100 \u2192 80 Hz \u0437\u0430 6 \u0441."

    const-string v22, "\u0412\u0441\u0435\u043a\u0438 \u0434\u0435\u043d \u0438\u043b\u0438 \u043f\u0440\u0435\u0437 \u0434\u0435\u043d."

    const-string v23, "\u041d\u0435 \u0433\u043e \u043f\u0440\u0430\u0432\u0438 \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0441 \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d TENS \u043d\u0430 \u0441\u044a\u0449\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e."

    invoke-direct/range {v1 .. v23}, Lcom/isaigu/gymapp/bodytech/BtAus$T;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIII[IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v24, v25

    sput-object v24, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    return-void

    .line 73
    nop

    :array_1b6
    .array-data 4
        0x2
        0x9
        0x8
    .end array-data

    .line 74
    :array_1c0
    .array-data 4
        0x2
        0x9
        0x8
        0x1
    .end array-data

    .line 75
    :array_1cc
    .array-data 4
        0x2
        0x9
        0x8
        0x1
        0x7
    .end array-data

    .line 76
    :array_1da
    .array-data 4
        0x8
        0x2
        0x9
        0x1
        0x7
    .end array-data

    .line 77
    :array_1e8
    .array-data 4
        0x2
        0x9
        0x3
    .end array-data

    .line 78
    :array_1f2
    .array-data 4
        0x7
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static at(IIID)Lcom/isaigu/gymapp/bodytech/BtAus$Pos;
    .registers 16

    .prologue
    .line 180
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_8

    const-wide/16 p3, 0x0

    .line 181
    :cond_8
    if-lez p1, :cond_c

    if-gtz p0, :cond_2f

    .line 182
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

    .line 192
    :goto_24
    return-object v0

    .line 183
    :cond_25
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    goto :goto_24

    .line 185
    :cond_2f
    add-int v4, p0, p1

    .line 186
    int-to-double v0, v4

    rem-double v6, p3, v0

    .line 187
    int-to-double v0, p2

    .line 188
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v0

    int-to-double v8, p0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_ab

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    move-wide v2, v0

    .line 189
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

    .line 190
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

    .line 191
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

    .line 192
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

    .line 244
    if-le p1, p0, :cond_6

    if-gtz p2, :cond_8

    :cond_6
    int-to-double v0, p0

    .line 247
    :goto_7
    return-wide v0

    .line 245
    :cond_8
    int-to-double v0, p2

    rem-double v0, p3, v0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 246
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1b

    mul-double/2addr v0, v4

    .line 247
    :goto_14
    int-to-double v2, p0

    sub-int v4, p1, p0

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    goto :goto_7

    .line 246
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

    .line 149
    if-lez p0, :cond_5

    if-gtz p1, :cond_b

    :cond_5
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 152
    :goto_a
    return-object v0

    .line 150
    :cond_b
    const/16 v0, 0x3e8

    div-int v1, v0, p0

    .line 151
    if-lt p1, v1, :cond_17

    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_a

    .line 152
    :cond_17
    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 v2, 0x1

    sub-int/2addr v1, p1

    aput v1, v0, v2

    goto :goto_a

    .line 149
    nop

    :array_22
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 151
    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static ifcB(II)I
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v2

    .line 237
    const-wide v4, 0x412e848000000000L    # 1000000.0

    int-to-double v6, p1

    add-double/2addr v2, v6

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 238
    if-ge v1, v0, :cond_1b

    .line 239
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
    .line 216
    .line 217
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 218
    const v2, 0xf4240

    div-int v9, v2, p0

    .line 219
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

    .line 220
    const/16 v2, 0x64

    if-ge v8, v2, :cond_27

    .line 219
    :cond_23
    :goto_23
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_15

    .line 221
    :cond_27
    const v2, 0xf4240

    div-int v7, v2, v8

    .line 222
    const-wide v2, 0x412e848000000000L    # 1000000.0

    int-to-double v10, v8

    div-double/2addr v2, v10

    .line 223
    invoke-static {v7, p1}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcB(II)I

    move-result v5

    .line 224
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

    .line 225
    cmpg-double v10, v2, v0

    if-gez v10, :cond_23

    move-wide v0, v2

    move v4, v5

    move v6, v7

    .line 228
    goto :goto_23

    .line 231
    :cond_5c
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    return-object v0
.end method

.method public static pct(IFI)I
    .registers 7

    .prologue
    const/16 v0, 0x63

    const/4 v1, 0x1

    .line 197
    int-to-float v2, p0

    mul-float/2addr v2, p1

    int-to-float v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 198
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_21

    if-ge v2, v1, :cond_21

    if-lez p0, :cond_21

    if-lez p2, :cond_21

    .line 199
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

.method public static realHz(I)D
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 206
    const v1, 0xf4240

    if-ge p0, v0, :cond_7

    move p0, v0

    :cond_7
    div-int v0, v1, p0

    .line 207
    const-wide v2, 0x412e848000000000L    # 1000000.0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static widthFor(II)I
    .registers 4

    .prologue
    const/16 v0, 0x32

    .line 157
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->maxUsAt(I)I

    move-result v1

    .line 158
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

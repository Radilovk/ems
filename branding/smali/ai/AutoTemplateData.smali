.class final Lcom/isaigu/gymapp/ai/AutoTemplateData;
.super Ljava/lang/Object;
.source "AutoTemplateData.java"


# static fields
.field static final AVOID:[[Ljava/lang/String;

.field static final BG:[Ljava/lang/String;

.field static final COND:[Ljava/lang/String;

.field static final EN:[Ljava/lang/String;

.field static final FOCUS:[Ljava/lang/String;

.field static final FOCUS_EX:[[Ljava/lang/String;

.field static final IDS:[Ljava/lang/String;

.field static final INSTEAD:[[Ljava/lang/String;

.field static final MET:[D

.field static final MUS:[[I

.field static final PAT:[Ljava/lang/String;

.field static final POS:[Ljava/lang/String;

.field static final PROGRAMS:[Ljava/lang/String;

.field static final STATIONS:[[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "banded-lat-pulldown"

    aput-object v1, v0, v6

    const-string v1, "bench-dip"

    aput-object v1, v0, v7

    const-string v1, "bicep-curl"

    aput-object v1, v0, v8

    const-string v1, "bicycle-crunch"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "bodyweight-squat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bulgarian-split-squat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "burpee"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "chair-dip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "curtsy-lunge"

    aput-object v2, v0, v1

    const-string v1, "diamond-push-up"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "donkey-kick"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dumbbell-bench-press"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dumbbell-bent-over-row"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dumbbell-fly"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dumbbell-lateral-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dumbbell-overhead-tricep-extension"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dumbbell-side-bend"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dumbbell-sumo-squat"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "elliptical"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "fire-hydrant"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "forward-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "glute-bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "goblet-squat"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "hammer-curl"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "incline-push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "jump-squat"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "jumping-jack"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "kettlebell-romanian-deadlift"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "kettlebell-swing"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "knee-push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "lateral-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "lateral-raise"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "lying-leg-raise"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "one-arm-dumbbell-row"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "plank"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "plank-shoulder-tap"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "plate-front-raise"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "reverse-crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "reverse-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "side-lying-hip-abduction"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "side-plank"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "single-leg-glute-bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "standing-dumbbell-press"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "step-down"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "superman"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "tricep-kickback"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    .line 9
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0422\u0435\u0433\u043b\u0435\u043d\u0435 \u043d\u0430\u0434\u043e\u043b\u0443 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a"

    aput-object v1, v0, v6

    const-string v1, "\u041a\u043e\u0444\u0438\u0447\u043a\u0438 \u043d\u0430 \u043f\u0435\u0439\u043a\u0430"

    aput-object v1, v0, v7

    const-string v1, "\u0411\u0438\u0446\u0435\u043f\u0441\u043e\u0432\u043e \u0441\u0433\u044a\u0432\u0430\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438"

    aput-object v1, v0, v8

    const-string v1, "\u0412\u0435\u043b\u043e\u0441\u0438\u043f\u0435\u0434 (\u043a\u043e\u0440\u0435\u043c\u043d\u0438 \u043f\u0440\u0435\u0441\u0438)"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "\u041a\u043b\u0435\u043a \u0431\u0435\u0437 \u0442\u0435\u0436\u0435\u0441\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438 \u043a\u043b\u0435\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0411\u044a\u0440\u043f\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041a\u043e\u0444\u0438\u0447\u043a\u0438 \u043d\u0430 \u0441\u0442\u043e\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041a\u043e\u0440\u0435\u043c\u043d\u0438 \u043f\u0440\u0435\u0441\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0420\u0435\u0432\u0435\u0440\u0430\u043d\u0441 \u043d\u0430\u043f\u0430\u0434\u0438"

    aput-object v2, v0, v1

    const-string v1, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438 \u201e\u0434\u0438\u0430\u043c\u0430\u043d\u0442\u201c"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "\u0420\u0438\u0442\u043d\u0438\u043a \u043d\u0430\u0437\u0430\u0434 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u041b\u0435\u0436\u0430\u043d\u043a\u0430 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0413\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438 \u0432 \u043d\u0430\u043a\u043b\u043e\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0420\u0430\u0437\u0442\u0432\u0430\u0440\u044f\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438 \u043e\u0442 \u043b\u0435\u0433"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u0438 \u043d\u0430\u043f\u0430\u0434\u0438 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u0420\u0430\u0437\u0433\u044a\u0432\u0430\u043d\u0435 \u0437\u0430 \u0442\u0440\u0438\u0446\u0435\u043f\u0441 \u043d\u0430\u0434 \u0433\u043b\u0430\u0432\u0430\u0442\u0430 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u043e \u043d\u0430\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0421\u0443\u043c\u043e \u043a\u043b\u0435\u043a \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u041a\u0430\u0440\u0434\u0438\u043e \u0442\u0440\u0435\u043d\u0430\u0436\u043e\u0440"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u041e\u0442\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e \u0432\u0441\u0442\u0440\u0430\u043d\u0438 (\u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435)"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u041d\u0430\u043f\u0430\u0434\u0438 \u043d\u0430\u043f\u0440\u0435\u0434"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u0413\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u0413\u043e\u0431\u043b\u0435\u0442 \u043a\u043b\u0435\u043a (\u0441 \u0434\u044a\u043c\u0431\u0435\u043b \u043f\u0440\u0435\u0434 \u0433\u044a\u0440\u0434\u0438\u0442\u0435)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u0421\u0433\u044a\u0432\u0430\u043d\u0435 \u201e\u0447\u0443\u043a\u201c \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438 \u0441 \u0440\u044a\u0446\u0435 \u043d\u0430 \u043f\u0435\u0439\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u041a\u043b\u0435\u043a \u0441 \u043e\u0442\u0441\u043a\u043e\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u0414\u0436\u044a\u043c\u043f\u0438\u043d\u0433 \u0434\u0436\u0430\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u0420\u0443\u043c\u044a\u043d\u0441\u043a\u0430 \u0442\u044f\u0433\u0430 \u0441 \u043f\u0443\u0434\u043e\u0432\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u0421\u0443\u0438\u043d\u0433 \u0441 \u043f\u0443\u0434\u043e\u0432\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u0438 \u043d\u0430\u043f\u0430\u0434\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u043e \u0440\u0430\u0437\u0442\u0432\u0430\u0440\u044f\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u0412\u0434\u0438\u0433\u0430\u043d\u0435 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043e\u0442 \u043b\u0435\u0433"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u0413\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b \u0441 \u0435\u0434\u043d\u0430 \u0440\u044a\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u041f\u043b\u0430\u043d\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u041f\u043b\u0430\u043d\u043a \u0441 \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u0440\u0430\u043c\u043e\u0442\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u041f\u0440\u0435\u0434\u043d\u043e \u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u0441 \u0434\u0438\u0441\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u041e\u0431\u0440\u0430\u0442\u043d\u0438 \u043a\u043e\u0440\u0435\u043c\u043d\u0438 \u043f\u0440\u0435\u0441\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u041d\u0430\u043f\u0430\u0434\u0438 \u043d\u0430\u0437\u0430\u0434"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u041e\u0442\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430 \u043e\u0442 \u043b\u0435\u0433 \u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u0435\u043d \u043f\u043b\u0430\u043d\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u0413\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442 \u043d\u0430 \u0435\u0434\u0438\u043d \u043a\u0440\u0430\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u0420\u0430\u043c\u0435\u043d\u043d\u0430 \u043f\u0440\u0435\u0441\u0430 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438 (\u043f\u0440\u0430\u0432)"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u0421\u043b\u0438\u0437\u0430\u043d\u0435 \u043e\u0442 \u043f\u0435\u0439\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u0421\u0443\u043f\u0435\u0440\u043c\u0435\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u0422\u0440\u0438\u0446\u0435\u043f\u0441\u043e\u0432 \u0440\u0438\u0442\u043d\u0438\u043a \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->BG:[Ljava/lang/String;

    .line 10
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Banded Lat Pulldown"

    aput-object v1, v0, v6

    const-string v1, "Bench Dip"

    aput-object v1, v0, v7

    const-string v1, "Bicep Curl"

    aput-object v1, v0, v8

    const-string v1, "Bicycle Crunch"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Bodyweight Squat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Bulgarian Split Squat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Burpee"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Chair Dip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Curtsy Lunge"

    aput-object v2, v0, v1

    const-string v1, "Diamond Push-up"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "Donkey Kick"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Dumbbell Bench Press"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Dumbbell Bent Over Row"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Dumbbell Fly"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Dumbbell Lateral Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Dumbbell Overhead Tricep Extension"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Dumbbell Side Bend"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dumbbell Sumo Squat"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Elliptical"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Fire Hydrant"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Forward Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Glute Bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Goblet Squat"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Hammer Curl"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Incline Push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Jump Squat"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Jumping Jack"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Kettlebell Romanian Deadlift"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Kettlebell Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Knee Push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Lateral Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Lateral Raise"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Lying Leg Raise"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "One-Arm Dumbbell Row"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Plank"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Plank Shoulder Tap"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Plate Front Raise"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Reverse Crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Reverse Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Side-Lying Hip Abduction"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Side Plank"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Single-Leg Glute Bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Standing Dumbbell Press"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Step-Down"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Superman"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Tricep Kickback"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->EN:[Ljava/lang/String;

    .line 11
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stand"

    aput-object v1, v0, v6

    const-string v1, "bench"

    aput-object v1, v0, v7

    const-string v1, "stand"

    aput-object v1, v0, v8

    const-string v1, "floor"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "stand"

    aput-object v2, v0, v1

    const-string v1, "floor"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "machine"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "stand"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->POS:[Ljava/lang/String;

    .line 13
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pull_v"

    aput-object v1, v0, v6

    const-string v1, "dip"

    aput-object v1, v0, v7

    const-string v1, "biceps"

    aput-object v1, v0, v8

    const-string v1, "core_rot"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "squat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "core_flex"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const-string v1, "push_h"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "glute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "push_h"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pull_h"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fly"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "triceps"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "core_rot"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "squat"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "glute"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "glute"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "squat"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "biceps"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "push_h"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "plyo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "plyo"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "hinge"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "hinge"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "push_h"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "lat_raise"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "core_hip"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "pull_h"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "core_static"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "core_static"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "front_raise"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "push_h"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "core_flex"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "abductor"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "core_static"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "glute"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "push_v"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "squat"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "back_ext"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "triceps"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PAT:[Ljava/lang/String;

    .line 16
    const/16 v0, 0x30

    new-array v0, v0, [D

    fill-array-data v0, :array_dd6

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    .line 17
    const/16 v0, 0x30

    new-array v0, v0, [[I

    new-array v1, v10, [I

    fill-array-data v1, :array_e9a

    aput-object v1, v0, v6

    new-array v1, v10, [I

    fill-array-data v1, :array_eb2

    aput-object v1, v0, v7

    new-array v1, v10, [I

    fill-array-data v1, :array_eca

    aput-object v1, v0, v8

    new-array v1, v10, [I

    fill-array-data v1, :array_ee2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v10, [I

    fill-array-data v2, :array_efa

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v10, [I

    fill-array-data v2, :array_f12

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [I

    fill-array-data v2, :array_f2a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v10, [I

    fill-array-data v2, :array_f42

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v10, [I

    fill-array-data v2, :array_f5a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v10, [I

    fill-array-data v2, :array_f72

    aput-object v2, v0, v1

    new-array v1, v10, [I

    fill-array-data v1, :array_f8a

    aput-object v1, v0, v10

    const/16 v1, 0xb

    new-array v2, v10, [I

    fill-array-data v2, :array_fa2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v10, [I

    fill-array-data v2, :array_fba

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v10, [I

    fill-array-data v2, :array_fd2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v10, [I

    fill-array-data v2, :array_fea

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v10, [I

    fill-array-data v2, :array_1002

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v10, [I

    fill-array-data v2, :array_101a

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v10, [I

    fill-array-data v2, :array_1032

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v10, [I

    fill-array-data v2, :array_104a

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v10, [I

    fill-array-data v2, :array_1062

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v10, [I

    fill-array-data v2, :array_107a

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v10, [I

    fill-array-data v2, :array_1092

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v10, [I

    fill-array-data v2, :array_10aa

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v10, [I

    fill-array-data v2, :array_10c2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v10, [I

    fill-array-data v2, :array_10da

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v10, [I

    fill-array-data v2, :array_10f2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v10, [I

    fill-array-data v2, :array_110a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v10, [I

    fill-array-data v2, :array_1122

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v10, [I

    fill-array-data v2, :array_113a

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v10, [I

    fill-array-data v2, :array_1152

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v10, [I

    fill-array-data v2, :array_116a

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v10, [I

    fill-array-data v2, :array_1182

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v10, [I

    fill-array-data v2, :array_119a

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v10, [I

    fill-array-data v2, :array_11b2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v10, [I

    fill-array-data v2, :array_11ca

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v10, [I

    fill-array-data v2, :array_11e2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v10, [I

    fill-array-data v2, :array_11fa

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v10, [I

    fill-array-data v2, :array_1212

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v10, [I

    fill-array-data v2, :array_122a

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v10, [I

    fill-array-data v2, :array_1242

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v10, [I

    fill-array-data v2, :array_125a

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v10, [I

    fill-array-data v2, :array_1272

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v10, [I

    fill-array-data v2, :array_128a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v10, [I

    fill-array-data v2, :array_12a2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v10, [I

    fill-array-data v2, :array_12ba

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v10, [I

    fill-array-data v2, :array_12d2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v10, [I

    fill-array-data v2, :array_12ea

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v10, [I

    fill-array-data v2, :array_1302

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "general"

    aput-object v1, v0, v6

    const-string v1, "glutes"

    aput-object v1, v0, v7

    const-string v1, "core"

    aput-object v1, v0, v8

    const-string v1, "power"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "back_active"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "senior"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mass"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "upper"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [[[Ljava/lang/String;

    new-array v1, v9, [[Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bodyweight-squat"

    aput-object v3, v2, v6

    const-string v3, "banded-lat-pulldown"

    aput-object v3, v2, v7

    const-string v3, "forward-lunge"

    aput-object v3, v2, v8

    const-string v3, "incline-push-up"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "chair-dip"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "glute-bridge"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "crunch"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "plank"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "goblet-squat"

    aput-object v3, v2, v6

    const-string v3, "reverse-lunge"

    aput-object v3, v2, v7

    const-string v3, "standing-dumbbell-press"

    aput-object v3, v2, v8

    const-string v3, "dumbbell-overhead-tricep-extension"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "knee-push-up"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "glute-bridge"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "bicycle-crunch"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "plank-shoulder-tap"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "kettlebell-romanian-deadlift"

    aput-object v3, v2, v6

    const-string v3, "standing-dumbbell-press"

    aput-object v3, v2, v7

    const-string v3, "dumbbell-lateral-lunge"

    aput-object v3, v2, v8

    const-string v3, "bulgarian-split-squat"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "bench-dip"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "plank-shoulder-tap"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "lying-leg-raise"

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    new-array v1, v9, [[Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bodyweight-squat"

    aput-object v3, v2, v6

    const-string v3, "step-down"

    aput-object v3, v2, v7

    const-string v3, "glute-bridge"

    aput-object v3, v2, v8

    const-string v3, "side-lying-hip-abduction"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "donkey-kick"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "fire-hydrant"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "dumbbell-sumo-squat"

    aput-object v3, v2, v6

    const-string v3, "reverse-lunge"

    aput-object v3, v2, v7

    const-string v3, "curtsy-lunge"

    aput-object v3, v2, v8

    const-string v3, "lateral-lunge"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "single-leg-glute-bridge"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "donkey-kick"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "fire-hydrant"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "kettlebell-romanian-deadlift"

    aput-object v3, v2, v6

    const-string v3, "dumbbell-lateral-lunge"

    aput-object v3, v2, v7

    const-string v3, "kettlebell-swing"

    aput-object v3, v2, v8

    const-string v3, "jump-squat"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "curtsy-lunge"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "bulgarian-split-squat"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "single-leg-glute-bridge"

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    new-array v1, v9, [[Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "crunch"

    aput-object v3, v2, v6

    const-string v3, "reverse-crunch"

    aput-object v3, v2, v7

    const-string v3, "plank"

    aput-object v3, v2, v8

    const-string v3, "side-plank"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "superman"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "glute-bridge"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "dumbbell-side-bend"

    aput-object v3, v2, v6

    const-string v3, "bicycle-crunch"

    aput-object v3, v2, v7

    const-string v3, "lying-leg-raise"

    aput-object v3, v2, v8

    const-string v3, "plank-shoulder-tap"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "side-plank"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "superman"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "reverse-crunch"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "dumbbell-side-bend"

    aput-object v3, v2, v6

    const-string v3, "lying-leg-raise"

    aput-object v3, v2, v7

    const-string v3, "bicycle-crunch"

    aput-object v3, v2, v8

    const-string v3, "plank-shoulder-tap"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "side-plank"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "reverse-crunch"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "plank"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "superman"

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    new-array v1, v9, [[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jump-squat"

    aput-object v3, v2, v6

    const-string v3, "knee-push-up"

    aput-object v3, v2, v7

    const-string v3, "kettlebell-swing"

    aput-object v3, v2, v8

    const-string v3, "forward-lunge"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "jumping-jack"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jump-squat"

    aput-object v3, v2, v6

    const-string v3, "burpee"

    aput-object v3, v2, v7

    const-string v3, "kettlebell-swing"

    aput-object v3, v2, v8

    const-string v3, "plank-shoulder-tap"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "reverse-lunge"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "jumping-jack"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "standing-dumbbell-press"

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v9, [[Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "elliptical"

    aput-object v4, v3, v6

    const-string v4, "bodyweight-squat"

    aput-object v4, v3, v7

    const-string v4, "step-down"

    aput-object v4, v3, v8

    const-string v4, "lateral-lunge"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "glute-bridge"

    aput-object v5, v3, v4

    aput-object v3, v2, v6

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "jumping-jack"

    aput-object v4, v3, v6

    const-string v4, "bodyweight-squat"

    aput-object v4, v3, v7

    const-string v4, "forward-lunge"

    aput-object v4, v3, v8

    const-string v4, "plank-shoulder-tap"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "lateral-lunge"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "elliptical"

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "burpee"

    aput-object v4, v3, v6

    const-string v4, "jump-squat"

    aput-object v4, v3, v7

    const-string v4, "jumping-jack"

    aput-object v4, v3, v8

    const-string v4, "kettlebell-swing"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "reverse-lunge"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "plank-shoulder-tap"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "dumbbell-lateral-lunge"

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v9, [[Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "banded-lat-pulldown"

    aput-object v4, v3, v6

    const-string v4, "bodyweight-squat"

    aput-object v4, v3, v7

    const-string v4, "glute-bridge"

    aput-object v4, v3, v8

    const-string v4, "superman"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "plank"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "side-plank"

    aput-object v5, v3, v4

    aput-object v3, v2, v6

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "banded-lat-pulldown"

    aput-object v4, v3, v6

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v3, v7

    const-string v4, "single-leg-glute-bridge"

    aput-object v4, v3, v8

    const-string v4, "superman"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "plank-shoulder-tap"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "side-plank"

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "kettlebell-romanian-deadlift"

    aput-object v4, v3, v6

    const-string v4, "goblet-squat"

    aput-object v4, v3, v7

    const-string v4, "banded-lat-pulldown"

    aput-object v4, v3, v8

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "superman"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "side-plank"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "plank-shoulder-tap"

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v9, [[Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "bodyweight-squat"

    aput-object v4, v3, v6

    const-string v4, "banded-lat-pulldown"

    aput-object v4, v3, v7

    const-string v4, "incline-push-up"

    aput-object v4, v3, v8

    const-string v4, "step-down"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "glute-bridge"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "side-lying-hip-abduction"

    aput-object v5, v3, v4

    aput-object v3, v2, v6

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "goblet-squat"

    aput-object v4, v3, v6

    const-string v4, "standing-dumbbell-press"

    aput-object v4, v3, v7

    const-string v4, "forward-lunge"

    aput-object v4, v3, v8

    const-string v4, "incline-push-up"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "one-arm-dumbbell-row"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "glute-bridge"

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "goblet-squat"

    aput-object v4, v3, v6

    const-string v4, "standing-dumbbell-press"

    aput-object v4, v3, v7

    const-string v4, "reverse-lunge"

    aput-object v4, v3, v8

    const-string v4, "plate-front-raise"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "tricep-kickback"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "one-arm-dumbbell-row"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "knee-push-up"

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "bodyweight-squat"

    aput-object v4, v3, v6

    const-string v4, "push-up"

    aput-object v4, v3, v7

    const-string v4, "dumbbell-bent-over-row"

    aput-object v4, v3, v8

    const-string v4, "forward-lunge"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "standing-dumbbell-press"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "bicep-curl"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bench-dip"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "plank"

    aput-object v5, v3, v4

    aput-object v3, v2, v6

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "goblet-squat"

    aput-object v4, v3, v6

    const-string v4, "dumbbell-bench-press"

    aput-object v4, v3, v7

    const-string v4, "dumbbell-bent-over-row"

    aput-object v4, v3, v8

    const-string v4, "reverse-lunge"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "standing-dumbbell-press"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "hammer-curl"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "dumbbell-overhead-tricep-extension"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "plank-shoulder-tap"

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "kettlebell-romanian-deadlift"

    aput-object v4, v3, v6

    const-string v4, "dumbbell-bench-press"

    aput-object v4, v3, v7

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v3, v8

    const-string v4, "bulgarian-split-squat"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "standing-dumbbell-press"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "diamond-push-up"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "bicep-curl"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "lying-leg-raise"

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [[Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "incline-push-up"

    aput-object v4, v3, v6

    const-string v4, "banded-lat-pulldown"

    aput-object v4, v3, v7

    const-string v4, "standing-dumbbell-press"

    aput-object v4, v3, v8

    const-string v4, "bicep-curl"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "chair-dip"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "lateral-raise"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "plank"

    aput-object v5, v3, v4

    aput-object v3, v2, v6

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "push-up"

    aput-object v4, v3, v6

    const-string v4, "dumbbell-bent-over-row"

    aput-object v4, v3, v7

    const-string v4, "dumbbell-fly"

    aput-object v4, v3, v8

    const-string v4, "lateral-raise"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "hammer-curl"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "dumbbell-overhead-tricep-extension"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "plank-shoulder-tap"

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "dumbbell-bench-press"

    aput-object v4, v3, v6

    const-string v4, "one-arm-dumbbell-row"

    aput-object v4, v3, v7

    const-string v4, "standing-dumbbell-press"

    aput-object v4, v3, v8

    const-string v4, "diamond-push-up"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "bicep-curl"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "lateral-raise"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tricep-kickback"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "plank-shoulder-tap"

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "knees"

    aput-object v1, v0, v6

    const-string v1, "back"

    aput-object v1, v0, v7

    const-string v1, "neck"

    aput-object v1, v0, v8

    const-string v1, "diastasis"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "postpartum"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "osteo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "joints"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "jump-squat"

    aput-object v2, v1, v6

    const-string v2, "burpee"

    aput-object v2, v1, v7

    const-string v2, "bulgarian-split-squat"

    aput-object v2, v1, v8

    const-string v2, "forward-lunge"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "reverse-lunge"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "curtsy-lunge"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "lateral-lunge"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dumbbell-lateral-lunge"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "jumping-jack"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "step-down"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "kettlebell-swing"

    aput-object v2, v1, v6

    const-string v2, "kettlebell-romanian-deadlift"

    aput-object v2, v1, v7

    const-string v2, "lying-leg-raise"

    aput-object v2, v1, v8

    const-string v2, "burpee"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "jump-squat"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "bicycle-crunch"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "crunch"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dumbbell-bent-over-row"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "standing-dumbbell-press"

    aput-object v2, v1, v6

    const-string v2, "dumbbell-overhead-tricep-extension"

    aput-object v2, v1, v7

    const-string v2, "crunch"

    aput-object v2, v1, v8

    const-string v2, "bicycle-crunch"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "plate-front-raise"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "dumbbell-bench-press"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "lateral-raise"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "crunch"

    aput-object v2, v1, v6

    const-string v2, "bicycle-crunch"

    aput-object v2, v1, v7

    const-string v2, "reverse-crunch"

    aput-object v2, v1, v8

    const-string v2, "lying-leg-raise"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "plank-shoulder-tap"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "plank"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "burpee"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "push-up"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "diamond-push-up"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "crunch"

    aput-object v3, v2, v6

    const-string v3, "bicycle-crunch"

    aput-object v3, v2, v7

    const-string v3, "reverse-crunch"

    aput-object v3, v2, v8

    const-string v3, "lying-leg-raise"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "plank-shoulder-tap"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "plank"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "jump-squat"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "burpee"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "jumping-jack"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "kettlebell-swing"

    aput-object v4, v2, v3

    const-string v3, "push-up"

    aput-object v3, v2, v10

    const/16 v3, 0xb

    const-string v4, "diamond-push-up"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jump-squat"

    aput-object v3, v2, v6

    const-string v3, "burpee"

    aput-object v3, v2, v7

    const-string v3, "jumping-jack"

    aput-object v3, v2, v8

    const-string v3, "kettlebell-swing"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "crunch"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "bicycle-crunch"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jump-squat"

    aput-object v3, v2, v6

    const-string v3, "burpee"

    aput-object v3, v2, v7

    const-string v3, "jumping-jack"

    aput-object v3, v2, v8

    const-string v3, "kettlebell-swing"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "diamond-push-up"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->AVOID:[[Ljava/lang/String;

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "glute-bridge"

    aput-object v2, v1, v6

    const-string v2, "single-leg-glute-bridge"

    aput-object v2, v1, v7

    const-string v2, "side-lying-hip-abduction"

    aput-object v2, v1, v8

    const-string v2, "donkey-kick"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "fire-hydrant"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "bodyweight-squat"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "glute-bridge"

    aput-object v2, v1, v6

    const-string v2, "side-plank"

    aput-object v2, v1, v7

    const-string v2, "plank"

    aput-object v2, v1, v8

    const-string v2, "banded-lat-pulldown"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "side-lying-hip-abduction"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "reverse-crunch"

    aput-object v2, v1, v6

    const-string v2, "tricep-kickback"

    aput-object v2, v1, v7

    const-string v2, "banded-lat-pulldown"

    aput-object v2, v1, v8

    const-string v2, "glute-bridge"

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "glute-bridge"

    aput-object v2, v1, v6

    const-string v2, "side-lying-hip-abduction"

    aput-object v2, v1, v7

    const-string v2, "fire-hydrant"

    aput-object v2, v1, v8

    const-string v2, "donkey-kick"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "banded-lat-pulldown"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "glute-bridge"

    aput-object v3, v2, v6

    const-string v3, "side-lying-hip-abduction"

    aput-object v3, v2, v7

    const-string v3, "fire-hydrant"

    aput-object v3, v2, v8

    const-string v3, "donkey-kick"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "banded-lat-pulldown"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "bodyweight-squat"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bodyweight-squat"

    aput-object v3, v2, v6

    const-string v3, "glute-bridge"

    aput-object v3, v2, v7

    const-string v3, "step-down"

    aput-object v3, v2, v8

    const-string v3, "banded-lat-pulldown"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "side-lying-hip-abduction"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bodyweight-squat"

    aput-object v3, v2, v6

    const-string v3, "glute-bridge"

    aput-object v3, v2, v7

    const-string v3, "step-down"

    aput-object v3, v2, v8

    const-string v3, "side-lying-hip-abduction"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->INSTEAD:[[Ljava/lang/String;

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "glutes"

    aput-object v1, v0, v6

    const-string v1, "abs"

    aput-object v1, v0, v7

    const-string v1, "arms"

    aput-object v1, v0, v8

    const-string v1, "back"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "legs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "glute-bridge"

    aput-object v2, v1, v6

    const-string v2, "donkey-kick"

    aput-object v2, v1, v7

    const-string v2, "single-leg-glute-bridge"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "reverse-crunch"

    aput-object v2, v1, v6

    const-string v2, "side-plank"

    aput-object v2, v1, v7

    const-string v2, "plank"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "tricep-kickback"

    aput-object v2, v1, v6

    const-string v2, "bench-dip"

    aput-object v2, v1, v7

    const-string v2, "chair-dip"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "banded-lat-pulldown"

    aput-object v2, v1, v6

    const-string v2, "one-arm-dumbbell-row"

    aput-object v2, v1, v7

    const-string v2, "superman"

    aput-object v2, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "goblet-squat"

    aput-object v3, v2, v6

    const-string v3, "step-down"

    aput-object v3, v2, v7

    const-string v3, "lateral-lunge"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "incline-push-up"

    aput-object v3, v2, v6

    const-string v3, "knee-push-up"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS_EX:[[Ljava/lang/String;

    return-void

    .line 16
    :array_dd6
    .array-data 8
        0x400c000000000000L    # 3.5
        0x400e666666666666L    # 3.8
        0x4008000000000000L    # 3.0
        0x400e666666666666L    # 3.8
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4020000000000000L    # 8.0
        0x400e666666666666L    # 3.8
        0x4006666666666666L    # 2.8
        0x4010000000000000L    # 4.0
        0x400e666666666666L    # 3.8
        0x4006666666666666L    # 2.8
        0x400e666666666666L    # 3.8
        0x400c000000000000L    # 3.5
        0x4008000000000000L    # 3.0
        0x4012000000000000L    # 4.5
        0x400c000000000000L    # 3.5
        0x4008000000000000L    # 3.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4006666666666666L    # 2.8
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x4014000000000000L    # 5.0
        0x4008000000000000L    # 3.0
        0x400c000000000000L    # 3.5
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        0x4014000000000000L    # 5.0
        0x4020000000000000L    # 8.0
        0x400c000000000000L    # 3.5
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x400c000000000000L    # 3.5
        0x4008000000000000L    # 3.0
        0x400e666666666666L    # 3.8
        0x4008000000000000L    # 3.0
        0x400e666666666666L    # 3.8
        0x4008000000000000L    # 3.0
        0x4012000000000000L    # 4.5
        0x4004000000000000L    # 2.5
        0x4008000000000000L    # 3.0
        0x400a666666666666L    # 3.3
        0x400c000000000000L    # 3.5
        0x4010000000000000L    # 4.0
        0x4006666666666666L    # 2.8
        0x4008000000000000L    # 3.0
    .end array-data

    .line 17
    :array_e9a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x32
        0x28
        0x64
        0x0
        0x0
        0x0
    .end array-data

    :array_eb2
    .array-data 4
        0x32
        0x0
        0x0
        0x0
        0x64
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_eca
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_ee2
    .array-data 4
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_efa
    .array-data 4
        0x0
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x1e
        0x50
        0x28
    .end array-data

    :array_f12
    .array-data 4
        0x0
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x64
        0x28
    .end array-data

    :array_f2a
    .array-data 4
        0x3c
        0x32
        0x64
        0x28
        0x32
        0x0
        0x0
        0x0
        0x3c
        0x0
    .end array-data

    :array_f42
    .array-data 4
        0x32
        0x0
        0x0
        0x0
        0x64
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f5a
    .array-data 4
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f72
    .array-data 4
        0x0
        0x0
        0x50
        0x0
        0x0
        0x0
        0x0
        0x0
        0x64
        0x1e
    .end array-data

    :array_f8a
    .array-data 4
        0x32
        0x32
        0x0
        0x0
        0x64
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_fa2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1e
        0x64
        0x32
    .end array-data

    :array_fba
    .array-data 4
        0x64
        0x0
        0x0
        0x0
        0x32
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_fd2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x32
        0x32
        0x64
        0x0
        0x0
        0x0
    .end array-data

    :array_fea
    .array-data 4
        0x64
        0x0
        0x0
        0x0
        0x0
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1002
    .array-data 4
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x50
        0x28
    .end array-data

    :array_101a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1032
    .array-data 4
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x28
        0x0
        0x0
    .end array-data

    :array_104a
    .array-data 4
        0x0
        0x0
        0x5a
        0x0
        0x0
        0x0
        0x0
        0x0
        0x64
        0x32
    .end array-data

    :array_1062
    .array-data 4
        0x0
        0x0
        0x64
        0x32
        0x1e
        0x0
        0x0
        0x0
        0x46
        0x32
    .end array-data

    :array_107a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x64
        0x0
    .end array-data

    :array_1092
    .array-data 4
        0x0
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x50
        0x28
    .end array-data

    :array_10aa
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x28
        0x64
        0x3c
    .end array-data

    :array_10c2
    .array-data 4
        0x0
        0x1e
        0x64
        0x0
        0x1e
        0x0
        0x0
        0x0
        0x50
        0x28
    .end array-data

    :array_10da
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10f2
    .array-data 4
        0x64
        0x1e
        0x0
        0x0
        0x3c
        0x28
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_110a
    .array-data 4
        0x0
        0x0
        0x64
        0x46
        0x0
        0x0
        0x0
        0x0
        0x50
        0x28
    .end array-data

    :array_1122
    .array-data 4
        0x0
        0x0
        0x3c
        0x64
        0x0
        0x28
        0x0
        0x0
        0x28
        0x0
    .end array-data

    :array_113a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1e
        0x50
        0x5a
        0x64
    .end array-data

    :array_1152
    .array-data 4
        0x0
        0x28
        0x0
        0x0
        0x0
        0x28
        0x0
        0x46
        0x64
        0x5a
    .end array-data

    :array_116a
    .array-data 4
        0x64
        0x0
        0x0
        0x0
        0x3c
        0x28
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1182
    .array-data 4
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x50
        0x28
    .end array-data

    :array_119a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11b2
    .array-data 4
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11ca
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x32
        0x32
        0x64
        0x0
        0x0
        0x0
    .end array-data

    :array_11e2
    .array-data 4
        0x14
        0x64
        0x0
        0x0
        0x0
        0x1e
        0x0
        0x1e
        0x0
        0x0
    .end array-data

    :array_11fa
    .array-data 4
        0x1e
        0x64
        0x0
        0x0
        0x28
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1212
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1e
        0x64
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_122a
    .array-data 4
        0x64
        0x32
        0x0
        0x0
        0x32
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1242
    .array-data 4
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_125a
    .array-data 4
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x5a
        0x28
    .end array-data

    :array_1272
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x64
        0x0
    .end array-data

    :array_128a
    .array-data 4
        0x0
        0x64
        0x0
        0x0
        0x0
        0x1e
        0x0
        0x0
        0x1e
        0x0
    .end array-data

    :array_12a2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1e
        0x64
        0x46
    .end array-data

    :array_12ba
    .array-data 4
        0x0
        0x14
        0x0
        0x0
        0x46
        0x64
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12d2
    .array-data 4
        0x0
        0x0
        0x64
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x46
        0x0
    .end array-data

    :array_12ea
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x32
        0x64
        0x32
        0x1e
    .end array-data

    :array_1302
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x64
        0x0
        0x1e
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

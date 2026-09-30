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
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "banded-lat-pulldown"

    aput-object v1, v0, v6

    const-string v1, "bench-dip"

    aput-object v1, v0, v7

    const-string v1, "bicycle-crunch"

    aput-object v1, v0, v8

    const-string v1, "bodyweight-squat"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "bulgarian-split-squat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "burpee"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "chair-dip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "curtsy-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "donkey-kick"

    aput-object v2, v0, v1

    const-string v1, "dumbbell-lateral-lunge"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "dumbbell-overhead-tricep-extension"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dumbbell-side-bend"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dumbbell-sumo-squat"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "elliptical"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fire-hydrant"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "forward-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "glute-bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "goblet-squat"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "incline-push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "jump-squat"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "jumping-jack"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "kettlebell-romanian-deadlift"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "kettlebell-swing"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "knee-push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "lateral-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lying-leg-raise"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "one-arm-dumbbell-row"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "plank"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "plank-shoulder-tap"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "plate-front-raise"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "reverse-crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "reverse-lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "side-lying-hip-abduction"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "side-plank"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "single-leg-glute-bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "standing-dumbbell-press"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "step-down"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "superman"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "tricep-kickback"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    .line 9
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0422\u0435\u0433\u043b\u0435\u043d\u0435 \u043d\u0430\u0434\u043e\u043b\u0443 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a"

    aput-object v1, v0, v6

    const-string v1, "\u041a\u043e\u0444\u0438\u0447\u043a\u0438 \u043d\u0430 \u043f\u0435\u0439\u043a\u0430"

    aput-object v1, v0, v7

    const-string v1, "\u0412\u0435\u043b\u043e\u0441\u0438\u043f\u0435\u0434 (\u043a\u043e\u0440\u0435\u043c\u043d\u0438 \u043f\u0440\u0435\u0441\u0438)"

    aput-object v1, v0, v8

    const-string v1, "\u041a\u043b\u0435\u043a \u0431\u0435\u0437 \u0442\u0435\u0436\u0435\u0441\u0442"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "\u0411\u044a\u043b\u0433\u0430\u0440\u0441\u043a\u0438 \u043a\u043b\u0435\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0411\u044a\u0440\u043f\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u041a\u043e\u0444\u0438\u0447\u043a\u0438 \u043d\u0430 \u0441\u0442\u043e\u043b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041a\u043e\u0440\u0435\u043c\u043d\u0438 \u043f\u0440\u0435\u0441\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0420\u0435\u0432\u0435\u0440\u0430\u043d\u0441 \u043d\u0430\u043f\u0430\u0434\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0420\u0438\u0442\u043d\u0438\u043a \u043d\u0430\u0437\u0430\u0434 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435"

    aput-object v2, v0, v1

    const-string v1, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u0438 \u043d\u0430\u043f\u0430\u0434\u0438 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "\u0420\u0430\u0437\u0433\u044a\u0432\u0430\u043d\u0435 \u0437\u0430 \u0442\u0440\u0438\u0446\u0435\u043f\u0441 \u043d\u0430\u0434 \u0433\u043b\u0430\u0432\u0430\u0442\u0430 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u043e \u043d\u0430\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0421\u0443\u043c\u043e \u043a\u043b\u0435\u043a \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u041a\u0430\u0440\u0434\u0438\u043e \u0442\u0440\u0435\u043d\u0430\u0436\u043e\u0440"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u041e\u0442\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e \u0432\u0441\u0442\u0440\u0430\u043d\u0438 (\u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u041d\u0430\u043f\u0430\u0434\u0438 \u043d\u0430\u043f\u0440\u0435\u0434"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u0413\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0413\u043e\u0431\u043b\u0435\u0442 \u043a\u043b\u0435\u043a (\u0441 \u0434\u044a\u043c\u0431\u0435\u043b \u043f\u0440\u0435\u0434 \u0433\u044a\u0440\u0434\u0438\u0442\u0435)"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438 \u0441 \u0440\u044a\u0446\u0435 \u043d\u0430 \u043f\u0435\u0439\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u041a\u043b\u0435\u043a \u0441 \u043e\u0442\u0441\u043a\u043e\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u0414\u0436\u044a\u043c\u043f\u0438\u043d\u0433 \u0434\u0436\u0430\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u0420\u0443\u043c\u044a\u043d\u0441\u043a\u0430 \u0442\u044f\u0433\u0430 \u0441 \u043f\u0443\u0434\u043e\u0432\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u0421\u0443\u0438\u043d\u0433 \u0441 \u043f\u0443\u0434\u043e\u0432\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u043d\u0438 \u043d\u0430\u043f\u0430\u0434\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u0412\u0434\u0438\u0433\u0430\u043d\u0435 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043e\u0442 \u043b\u0435\u0433"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u0413\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b \u0441 \u0435\u0434\u043d\u0430 \u0440\u044a\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u041f\u043b\u0430\u043d\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u041f\u043b\u0430\u043d\u043a \u0441 \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435 \u043d\u0430 \u0440\u0430\u043c\u043e\u0442\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u041f\u0440\u0435\u0434\u043d\u043e \u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u0441 \u0434\u0438\u0441\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u041e\u0431\u0440\u0430\u0442\u043d\u0438 \u043a\u043e\u0440\u0435\u043c\u043d\u0438 \u043f\u0440\u0435\u0441\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u041d\u0430\u043f\u0430\u0434\u0438 \u043d\u0430\u0437\u0430\u0434"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u041e\u0442\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430 \u043e\u0442 \u043b\u0435\u0433 \u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u0421\u0442\u0440\u0430\u043d\u0438\u0447\u0435\u043d \u043f\u043b\u0430\u043d\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u0413\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442 \u043d\u0430 \u0435\u0434\u0438\u043d \u043a\u0440\u0430\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u0420\u0430\u043c\u0435\u043d\u043d\u0430 \u043f\u0440\u0435\u0441\u0430 \u0441 \u0434\u044a\u043c\u0431\u0435\u043b\u0438 (\u043f\u0440\u0430\u0432)"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u0421\u043b\u0438\u0437\u0430\u043d\u0435 \u043e\u0442 \u043f\u0435\u0439\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u0421\u0443\u043f\u0435\u0440\u043c\u0435\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u0422\u0440\u0438\u0446\u0435\u043f\u0441\u043e\u0432 \u0440\u0438\u0442\u043d\u0438\u043a \u0441 \u0434\u044a\u043c\u0431\u0435\u043b"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->BG:[Ljava/lang/String;

    .line 10
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Banded Lat Pulldown"

    aput-object v1, v0, v6

    const-string v1, "Bench Dip"

    aput-object v1, v0, v7

    const-string v1, "Bicycle Crunch"

    aput-object v1, v0, v8

    const-string v1, "Bodyweight Squat"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Bulgarian Split Squat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Burpee"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Chair Dip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Curtsy Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Donkey Kick"

    aput-object v2, v0, v1

    const-string v1, "Dumbbell Lateral Lunge"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "Dumbbell Overhead Tricep Extension"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Dumbbell Side Bend"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Dumbbell Sumo Squat"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Elliptical"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Fire Hydrant"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Forward Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Glute Bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Goblet Squat"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Incline Push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Jump Squat"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Jumping Jack"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Kettlebell Romanian Deadlift"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Kettlebell Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Knee Push-up"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Lateral Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Lying Leg Raise"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "One-Arm Dumbbell Row"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Plank"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Plank Shoulder Tap"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Plate Front Raise"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Reverse Crunch"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Reverse Lunge"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Side-Lying Hip Abduction"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Side Plank"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Single-Leg Glute Bridge"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Standing Dumbbell Press"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Step-Down"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Superman"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Tricep Kickback"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->EN:[Ljava/lang/String;

    .line 11
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stand"

    aput-object v1, v0, v6

    const-string v1, "bench"

    aput-object v1, v0, v7

    const-string v1, "floor"

    aput-object v1, v0, v8

    const-string v1, "stand"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "floor"

    aput-object v2, v0, v1

    const-string v1, "stand"

    aput-object v1, v0, v10

    const/16 v1, 0xb

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "machine"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "stand"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "bench"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "stand"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->POS:[Ljava/lang/String;

    .line 14
    const/16 v0, 0x28

    new-array v0, v0, [D

    fill-array-data v0, :array_a82

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    .line 15
    const/16 v0, 0x28

    new-array v0, v0, [[I

    new-array v1, v10, [I

    fill-array-data v1, :array_b26

    aput-object v1, v0, v6

    new-array v1, v10, [I

    fill-array-data v1, :array_b3e

    aput-object v1, v0, v7

    new-array v1, v10, [I

    fill-array-data v1, :array_b56

    aput-object v1, v0, v8

    new-array v1, v10, [I

    fill-array-data v1, :array_b6e

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v10, [I

    fill-array-data v2, :array_b86

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v10, [I

    fill-array-data v2, :array_b9e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [I

    fill-array-data v2, :array_bb6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v10, [I

    fill-array-data v2, :array_bce

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v10, [I

    fill-array-data v2, :array_be6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v10, [I

    fill-array-data v2, :array_bfe

    aput-object v2, v0, v1

    new-array v1, v10, [I

    fill-array-data v1, :array_c16

    aput-object v1, v0, v10

    const/16 v1, 0xb

    new-array v2, v10, [I

    fill-array-data v2, :array_c2e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v10, [I

    fill-array-data v2, :array_c46

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v10, [I

    fill-array-data v2, :array_c5e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v10, [I

    fill-array-data v2, :array_c76

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v10, [I

    fill-array-data v2, :array_c8e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v10, [I

    fill-array-data v2, :array_ca6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v10, [I

    fill-array-data v2, :array_cbe

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v10, [I

    fill-array-data v2, :array_cd6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v10, [I

    fill-array-data v2, :array_cee

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v10, [I

    fill-array-data v2, :array_d06

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v10, [I

    fill-array-data v2, :array_d1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v10, [I

    fill-array-data v2, :array_d36

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v10, [I

    fill-array-data v2, :array_d4e

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v10, [I

    fill-array-data v2, :array_d66

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v10, [I

    fill-array-data v2, :array_d7e

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v10, [I

    fill-array-data v2, :array_d96

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v10, [I

    fill-array-data v2, :array_dae

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v10, [I

    fill-array-data v2, :array_dc6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v10, [I

    fill-array-data v2, :array_dde

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v10, [I

    fill-array-data v2, :array_df6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v10, [I

    fill-array-data v2, :array_e0e

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v10, [I

    fill-array-data v2, :array_e26

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v10, [I

    fill-array-data v2, :array_e3e

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v10, [I

    fill-array-data v2, :array_e56

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v10, [I

    fill-array-data v2, :array_e6e

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v10, [I

    fill-array-data v2, :array_e86

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v10, [I

    fill-array-data v2, :array_e9e

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v10, [I

    fill-array-data v2, :array_eb6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v10, [I

    fill-array-data v2, :array_ece

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    .line 59
    const/4 v0, 0x7

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

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x7

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

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    .line 71
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

    .line 72
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

    const/4 v1, 0x7

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

    aput-object v1, v0, v7

    const/4 v1, 0x5

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

    aput-object v1, v0, v8

    const/4 v1, 0x7

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

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v10, [Ljava/lang/String;

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

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jump-squat"

    aput-object v3, v2, v6

    const-string v3, "burpee"

    aput-object v3, v2, v7

    const-string v3, "jumping-jack"

    aput-object v3, v2, v8

    const-string v3, "kettlebell-swing"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->AVOID:[[Ljava/lang/String;

    .line 81
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

    .line 92
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

    .line 93
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

    .line 14
    nop

    :array_a82
    .array-data 8
        0x400c000000000000L    # 3.5
        0x400e666666666666L    # 3.8
        0x400e666666666666L    # 3.8
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4020000000000000L    # 8.0
        0x400e666666666666L    # 3.8
        0x4006666666666666L    # 2.8
        0x4010000000000000L    # 4.0
        0x4006666666666666L    # 2.8
        0x4012000000000000L    # 4.5
        0x400c000000000000L    # 3.5
        0x4008000000000000L    # 3.0
        0x4014000000000000L    # 5.0
        0x4014000000000000L    # 5.0
        0x4006666666666666L    # 2.8
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x4014000000000000L    # 5.0
        0x400c000000000000L    # 3.5
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        0x4014000000000000L    # 5.0
        0x4020000000000000L    # 8.0
        0x400c000000000000L    # 3.5
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x400c000000000000L    # 3.5
        0x4008000000000000L    # 3.0
        0x400e666666666666L    # 3.8
        0x4008000000000000L    # 3.0
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

    .line 15
    :array_b26
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

    :array_b3e
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

    :array_b56
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

    :array_b6e
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

    :array_b86
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

    :array_b9e
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

    :array_bb6
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

    :array_bce
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

    :array_be6
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

    :array_bfe
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

    :array_c16
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

    :array_c2e
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

    :array_c46
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

    :array_c5e
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

    :array_c76
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

    :array_c8e
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

    :array_ca6
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

    :array_cbe
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

    :array_cd6
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

    :array_cee
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

    :array_d06
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

    :array_d1e
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

    :array_d36
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

    :array_d4e
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

    :array_d66
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

    :array_d7e
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

    :array_d96
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

    :array_dae
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

    :array_dc6
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

    :array_dde
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

    :array_df6
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

    :array_e0e
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

    :array_e26
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

    :array_e3e
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

    :array_e56
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

    :array_e6e
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

    :array_e86
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

    :array_e9e
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

    :array_eb6
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

    :array_ece
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

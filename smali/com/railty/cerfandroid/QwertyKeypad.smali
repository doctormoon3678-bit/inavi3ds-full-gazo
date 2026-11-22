.class final Lcom/railty/cerfandroid/QwertyKeypad;
.super Landroid/widget/LinearLayout;
.source "QwertyKeypad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/QwertyKeypad$Key;,
        Lcom/railty/cerfandroid/QwertyKeypad$KeyView;,
        Lcom/railty/cerfandroid/QwertyKeypad$Kind;
    }
.end annotation


# static fields
.field private static final ARMED:I

.field private static final GREEN:I

.field private static final KEY_DOWN:I

.field private static final LOCK_TAP_MS:J = 0x190L

.field private static final RED:I

.field private static final START:Ljava/lang/String; = "start-glyph"

.field private static final SUB:I

.field private static final VK_BACK:I = 0x8

.field private static final VK_DOWN:I = 0x28

.field private static final VK_F1:I = 0x70

.field private static final VK_F2:I = 0x71

.field private static final VK_F3:I = 0x72

.field private static final VK_F4:I = 0x73

.field private static final VK_F5:I = 0x74

.field private static final VK_HANGUL:I = 0x15

.field private static final VK_LEFT:I = 0x25

.field private static final VK_LWIN:I = 0x5b

.field private static final VK_OEM_1:I = 0xba

.field private static final VK_OEM_2:I = 0xbf

.field private static final VK_OEM_3:I = 0xc0

.field private static final VK_OEM_7:I = 0xde

.field private static final VK_OEM_COMMA:I = 0xbc

.field private static final VK_OEM_MINUS:I = 0xbd

.field private static final VK_OEM_PERIOD:I = 0xbe

.field private static final VK_OEM_PLUS:I = 0xbb

.field private static final VK_RETURN:I = 0xd

.field private static final VK_RIGHT:I = 0x27

.field private static final VK_SHIFT:I = 0x10

.field private static final VK_SPACE:I = 0x20

.field private static final VK_UP:I = 0x26

.field private static final WHITE:I


# instance fields
.field private fnArmed:Z

.field private fnLocked:Z

.field private fnTapAt:J

.field private fnView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

.field private shiftArmed:Z

.field private shiftLocked:Z

.field private shiftTapAt:J

.field private shiftView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

.field private final sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const/16 v0, 0x2d

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/QwertyKeypad;->KEY_DOWN:I

    .line 38
    const/16 v0, 0x1e

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/QwertyKeypad;->ARMED:I

    .line 39
    const/16 v0, 0xeb

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    .line 40
    const/16 v0, 0x8c

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/QwertyKeypad;->SUB:I

    .line 41
    const/16 v0, 0xc8

    const/16 v1, 0x50

    const/16 v2, 0x28

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/QwertyKeypad;->GREEN:I

    .line 42
    const/16 v0, 0xe6

    const/16 v1, 0x32

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/QwertyKeypad;->RED:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/railty/cerfandroid/PhoneKeypad$KeySink;)V
    .locals 31

    .line 93
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/railty/cerfandroid/QwertyKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->setOrientation(I)V

    .line 96
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->setBackgroundColor(I)V

    .line 98
    const/16 v2, 0xa

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-array v4, v2, [Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v5, Lcom/railty/cerfandroid/QwertyKeypad;->GREEN:I

    .line 99
    const-string v6, "Call"

    const/16 v7, 0x72

    invoke-static {v6, v7, v5}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x5b

    sget v7, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    const-string v8, "start-glyph"

    invoke-static {v8, v5, v7}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x70

    sget v7, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    const-string v8, "\u00b7\u00b7\u00b7"

    invoke-static {v8, v5, v7}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    sget v5, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    .line 100
    const-string v9, "\u2190"

    const/16 v10, 0x25

    invoke-static {v9, v10, v5}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const/16 v5, 0x26

    sget v10, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    const-string v11, "\u2191"

    invoke-static {v11, v5, v10}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v4, v10

    sget v5, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    const-string v11, "OK"

    const/16 v12, 0xd

    invoke-static {v11, v12, v5}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v11, 0x5

    aput-object v5, v4, v11

    sget v5, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    .line 101
    const-string v13, "\u2193"

    const/16 v14, 0x28

    invoke-static {v13, v14, v5}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v13, 0x6

    aput-object v5, v4, v13

    const/16 v5, 0x27

    sget v14, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    const-string v15, "\u2192"

    invoke-static {v15, v5, v14}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/4 v14, 0x7

    aput-object v5, v4, v14

    const/16 v5, 0x71

    sget v15, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    invoke-static {v8, v5, v15}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/16 v8, 0x8

    aput-object v5, v4, v8

    sget v5, Lcom/railty/cerfandroid/QwertyKeypad;->RED:I

    .line 102
    const-string v15, "End"

    move/from16 p1, v7

    const/16 v7, 0x73

    invoke-static {v15, v7, v5}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v4, v7

    .line 98
    invoke-direct {v0, v3, v4}, Lcom/railty/cerfandroid/QwertyKeypad;->Row([F[Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    .line 103
    new-array v3, v2, [Lcom/railty/cerfandroid/QwertyKeypad$Key;

    .line 104
    const/16 v4, 0x51

    const-string v5, "\u3142"

    const-string v15, "!"

    move/from16 p2, v7

    const/16 v7, 0x31

    invoke-static {v4, v5, v15, v7, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "\u3148"

    const-string v5, "1"

    const/16 v15, 0x57

    invoke-static {v15, v4, v5, v7, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v1

    .line 105
    const/16 v4, 0x45

    const-string v5, "\u3137"

    const-string v7, "2"

    const/16 v15, 0x32

    invoke-static {v4, v5, v7, v15, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, p1

    const/16 v4, 0x52

    const-string v5, "\u3131"

    const-string v7, "3"

    const/16 v15, 0x33

    invoke-static {v4, v5, v7, v15, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v9

    .line 106
    const/16 v4, 0x54

    const-string v5, "\u3145"

    const-string v7, "("

    move/from16 v16, v9

    const/16 v9, 0x39

    invoke-static {v4, v5, v7, v9, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, ")"

    const/16 v5, 0x30

    const/16 v7, 0x59

    move/from16 v17, v10

    const-string v10, "\u315b"

    invoke-static {v7, v10, v4, v5, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v11

    .line 107
    const/16 v4, 0x55

    const-string v5, "\u3155"

    const-string v7, "-"

    const/16 v10, 0xbd

    invoke-static {v4, v5, v7, v10, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v13

    const/16 v4, 0x49

    const-string v5, "\u3151"

    const-string v7, "+"

    const/16 v10, 0xbb

    invoke-static {v4, v5, v7, v10, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v14

    .line 108
    const/16 v4, 0x4f

    const-string v5, "\u3150"

    const-string v7, "="

    invoke-static {v4, v5, v7, v10, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, v8

    const/16 v4, 0x50

    const-string v5, "\u3154"

    const-string v7, "?"

    const/16 v10, 0xbf

    invoke-static {v4, v5, v7, v10, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v4

    aput-object v4, v3, p2

    .line 103
    const/4 v4, 0x0

    invoke-direct {v0, v4, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->Row([F[Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    .line 109
    new-array v3, v2, [Lcom/railty/cerfandroid/QwertyKeypad$Key;

    .line 110
    const/16 v5, 0x41

    const-string v7, "\u3141"

    move/from16 v18, v11

    const-string v11, "~"

    move/from16 v19, v13

    const/16 v13, 0xc0

    invoke-static {v5, v7, v11, v13, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "4"

    const/16 v7, 0x34

    const/16 v11, 0x53

    const-string v13, "\u3134"

    invoke-static {v11, v13, v5, v7, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v1

    .line 111
    const/16 v5, 0x44

    const-string v7, "\u3147"

    const-string v11, "5"

    const/16 v13, 0x35

    invoke-static {v5, v7, v11, v13, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, "6"

    const/16 v7, 0x36

    const/16 v11, 0x46

    const-string v13, "\u3139"

    invoke-static {v11, v13, v5, v7, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v16

    .line 112
    const/16 v5, 0x47

    const-string v7, "\u314e"

    const-string v11, "%"

    const/16 v13, 0x35

    invoke-static {v5, v7, v11, v13, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v17

    const-string v5, "\""

    const/16 v7, 0xde

    const/16 v11, 0x48

    const-string v13, "\u3157"

    invoke-static {v11, v13, v5, v7, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v18

    .line 113
    const/16 v5, 0x4a

    const-string v7, "\u3153"

    const-string v11, "\'"

    const/16 v13, 0xde

    invoke-static {v5, v7, v11, v13, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v19

    const-string v5, ":"

    const/16 v7, 0xba

    const/16 v11, 0x4b

    const-string v13, "\u314f"

    invoke-static {v11, v13, v5, v7, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v14

    .line 114
    const/16 v5, 0x4c

    const-string v7, "\u3163"

    const-string v11, ";"

    const/16 v13, 0xba

    invoke-static {v5, v7, v11, v13, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, v8

    const-string v5, "\u232b"

    sget v7, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    invoke-static {v5, v8, v7}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v5

    aput-object v5, v3, p2

    .line 109
    invoke-direct {v0, v4, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->Row([F[Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    .line 115
    new-array v2, v2, [Lcom/railty/cerfandroid/QwertyKeypad$Key;

    new-instance v20, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v28, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v29, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->SHIFT:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v21, "\u21e7"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v20 .. v29}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    aput-object v20, v2, v6

    .line 117
    const/16 v3, 0x5a

    const-string v5, "\u314b"

    const-string v7, "7"

    const/16 v11, 0x37

    invoke-static {v3, v5, v7, v11, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "8"

    const/16 v5, 0x38

    const/16 v7, 0x58

    const-string v11, "\u314c"

    invoke-static {v7, v11, v3, v5, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, p1

    .line 118
    const/16 v3, 0x43

    const-string v5, "\u314a"

    const-string v7, "9"

    invoke-static {v3, v5, v7, v9, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, v16

    const-string v3, "*"

    const/16 v5, 0x38

    const/16 v7, 0x56

    const-string v9, "\u314d"

    invoke-static {v7, v9, v3, v5, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, v17

    .line 119
    const/16 v3, 0x42

    const-string v5, "\u3160"

    const-string v7, "#"

    invoke-static {v3, v5, v7, v15, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, "&"

    const/16 v5, 0x37

    const/16 v7, 0x4e

    const-string v9, "\u315c"

    invoke-static {v7, v9, v3, v5, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, v19

    .line 120
    const/16 v3, 0x4d

    const-string v5, "\u3161"

    const-string v7, "/"

    invoke-static {v3, v5, v7, v10, v6}, Lcom/railty/cerfandroid/QwertyKeypad;->Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, v14

    new-instance v20, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v28, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v29, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v21, "."

    const-string v22, ","

    const/16 v24, 0xbe

    const/16 v26, 0xbc

    invoke-direct/range {v20 .. v29}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    aput-object v20, v2, v8

    sget v3, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    .line 122
    const-string v5, "\u21b5"

    invoke-static {v5, v12, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v3

    aput-object v3, v2, p2

    .line 115
    invoke-direct {v0, v4, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->Row([F[Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    .line 123
    new-array v2, v14, [F

    fill-array-data v2, :array_1

    new-array v3, v14, [Lcom/railty/cerfandroid/QwertyKeypad$Key;

    new-instance v20, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v28, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v29, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->FN:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v21, "Fn"

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v20 .. v29}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    aput-object v20, v3, v6

    new-instance v21, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v29, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v30, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v22, "0"

    const-string v23, "@"

    const/16 v24, 0x0

    const/16 v25, 0x30

    const/16 v27, 0x32

    const/16 v28, 0x1

    invoke-direct/range {v21 .. v30}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    aput-object v21, v3, v1

    new-instance v4, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v12, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v13, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v5, ","

    const-string v6, "?"

    const/4 v7, 0x0

    const/16 v8, 0xbc

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v13}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    aput-object v4, v3, p1

    sget v1, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    .line 127
    const-string v4, ""

    const/16 v5, 0x20

    invoke-static {v4, v5, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v1

    aput-object v1, v3, v16

    new-instance v4, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    sget v12, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v13, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const-string v5, "@"

    const-string v6, "."

    const/16 v8, 0x32

    const/4 v9, 0x1

    const/16 v10, 0xbe

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    aput-object v4, v3, v17

    sget v1, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    .line 129
    const-string v4, "\ud55c/\uc601"

    const/16 v5, 0x15

    invoke-static {v4, v5, v1}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v1

    aput-object v1, v3, v18

    const/16 v1, 0x74

    sget v4, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    const-string v5, "Mode"

    invoke-static {v5, v1, v4}, Lcom/railty/cerfandroid/QwertyKeypad;->Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;

    move-result-object v1

    aput-object v1, v3, v19

    .line 123
    invoke-direct {v0, v2, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->Row([F[Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    .line 130
    return-void

    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x4059999a    # 3.4f
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method private static Letter(CLjava/lang/String;Ljava/lang/String;IZ)Lcom/railty/cerfandroid/QwertyKeypad$Key;
    .locals 10

    .line 77
    new-instance v0, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sget v8, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    sget-object v9, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const/4 v5, 0x0

    move v4, p0

    move-object v3, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    return-object v0
.end method

.method private static Plain(Ljava/lang/String;II)Lcom/railty/cerfandroid/QwertyKeypad$Key;
    .locals 10

    .line 73
    new-instance v0, Lcom/railty/cerfandroid/QwertyKeypad$Key;

    const/4 v7, 0x0

    sget-object v9, Lcom/railty/cerfandroid/QwertyKeypad$Kind;->NORMAL:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/railty/cerfandroid/QwertyKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V

    return-object v0
.end method

.method private varargs Row([F[Lcom/railty/cerfandroid/QwertyKeypad$Key;)V
    .locals 8

    .line 137
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    move v2, v1

    :goto_0
    array-length v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    if-ge v2, v3, :cond_1

    .line 140
    if-eqz p1, :cond_0

    aget v4, p1, v2

    .line 141
    :cond_0
    new-instance v3, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad;->getContext()Landroid/content/Context;

    move-result-object v6

    aget-object v7, p2, v2

    invoke-direct {v3, p0, v6, v7}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;-><init>(Lcom/railty/cerfandroid/QwertyKeypad;Landroid/content/Context;Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, p1}, Lcom/railty/cerfandroid/QwertyKeypad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method private SetFn(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnArmed:Z

    .line 199
    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->invalidate()V

    .line 200
    :cond_0
    return-void
.end method

.method private SetShift(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftArmed:Z

    .line 194
    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/QwertyKeypad$KeyView;->invalidate()V

    .line 195
    :cond_0
    return-void
.end method

.method private Tap(Lcom/railty/cerfandroid/QwertyKeypad$Key;)V
    .locals 7

    .line 147
    iget-boolean v0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnArmed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 148
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnVk:I

    goto :goto_1

    :cond_1
    iget v3, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->vk:I

    .line 149
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v4, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnShifted:Z

    goto :goto_3

    :cond_2
    iget-boolean v4, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->shifted:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftArmed:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/railty/cerfandroid/QwertyKeypad$Key;->jamo:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v1

    .line 150
    :goto_3
    const/16 v5, 0x10

    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/railty/cerfandroid/QwertyKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    invoke-interface {v6, v5, v2}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 151
    :cond_5
    iget-object v6, p0, Lcom/railty/cerfandroid/QwertyKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    invoke-interface {v6, v3, v2}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 152
    iget-object v6, p0, Lcom/railty/cerfandroid/QwertyKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    invoke-interface {v6, v3, v1}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 153
    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/railty/cerfandroid/QwertyKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    invoke-interface {v3, v5, v1}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 154
    :cond_6
    invoke-static {p1}, Lcom/railty/cerfandroid/QwertyKeypad;->Typing(Lcom/railty/cerfandroid/QwertyKeypad$Key;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 155
    iget-boolean p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnArmed:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnLocked:Z

    if-nez p1, :cond_7

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->SetFn(Z)V

    .line 156
    :cond_7
    iget-boolean p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftArmed:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftLocked:Z

    if-nez p1, :cond_8

    if-nez v0, :cond_8

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->SetShift(Z)V

    .line 158
    :cond_8
    return-void
.end method

.method private TapFn()V
    .locals 8

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 180
    iget-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnLocked:Z

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnLocked:Z

    .line 182
    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->SetFn(Z)V

    goto :goto_0

    .line 183
    :cond_0
    iget-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnArmed:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnTapAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x190

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 184
    iput-boolean v3, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnLocked:Z

    .line 185
    invoke-direct {p0, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->SetFn(Z)V

    goto :goto_0

    .line 187
    :cond_1
    iget-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnArmed:Z

    xor-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->SetFn(Z)V

    .line 189
    :goto_0
    iput-wide v0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnTapAt:J

    .line 190
    return-void
.end method

.method private TapShift()V
    .locals 8

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 166
    iget-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftLocked:Z

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftLocked:Z

    .line 168
    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->SetShift(Z)V

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftArmed:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftTapAt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x190

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    .line 170
    iput-boolean v3, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftLocked:Z

    .line 171
    invoke-direct {p0, v3}, Lcom/railty/cerfandroid/QwertyKeypad;->SetShift(Z)V

    goto :goto_0

    .line 173
    :cond_1
    iget-boolean v2, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftArmed:Z

    xor-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/QwertyKeypad;->SetShift(Z)V

    .line 175
    :goto_0
    iput-wide v0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftTapAt:J

    .line 176
    return-void
.end method

.method private static Typing(Lcom/railty/cerfandroid/QwertyKeypad$Key;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->jamo:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic access$002(Lcom/railty/cerfandroid/QwertyKeypad;Lcom/railty/cerfandroid/QwertyKeypad$KeyView;)Lcom/railty/cerfandroid/QwertyKeypad$KeyView;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/railty/cerfandroid/QwertyKeypad;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnLocked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/railty/cerfandroid/QwertyKeypad;Lcom/railty/cerfandroid/QwertyKeypad$KeyView;)Lcom/railty/cerfandroid/QwertyKeypad$KeyView;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnView:Lcom/railty/cerfandroid/QwertyKeypad$KeyView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/railty/cerfandroid/QwertyKeypad;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/railty/cerfandroid/QwertyKeypad;->TapShift()V

    return-void
.end method

.method static synthetic access$1200(Lcom/railty/cerfandroid/QwertyKeypad;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/railty/cerfandroid/QwertyKeypad;->TapFn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/railty/cerfandroid/QwertyKeypad$Key;)Z
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/railty/cerfandroid/QwertyKeypad;->Typing(Lcom/railty/cerfandroid/QwertyKeypad$Key;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/railty/cerfandroid/QwertyKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/railty/cerfandroid/QwertyKeypad;Lcom/railty/cerfandroid/QwertyKeypad$Key;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/QwertyKeypad;->Tap(Lcom/railty/cerfandroid/QwertyKeypad$Key;)V

    return-void
.end method

.method static synthetic access$200(Lcom/railty/cerfandroid/QwertyKeypad;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftArmed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/railty/cerfandroid/QwertyKeypad;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->fnArmed:Z

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 12
    sget v0, Lcom/railty/cerfandroid/QwertyKeypad;->KEY_DOWN:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 12
    sget v0, Lcom/railty/cerfandroid/QwertyKeypad;->ARMED:I

    return v0
.end method

.method static synthetic access$600(Lcom/railty/cerfandroid/QwertyKeypad;F)I
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/QwertyKeypad;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 12
    sget v0, Lcom/railty/cerfandroid/QwertyKeypad;->WHITE:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 12
    sget v0, Lcom/railty/cerfandroid/QwertyKeypad;->SUB:I

    return v0
.end method

.method static synthetic access$900(Lcom/railty/cerfandroid/QwertyKeypad;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/railty/cerfandroid/QwertyKeypad;->shiftLocked:Z

    return p0
.end method

.method private dp(F)I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/railty/cerfandroid/QwertyKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

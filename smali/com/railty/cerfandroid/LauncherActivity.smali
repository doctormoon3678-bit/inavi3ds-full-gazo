.class public final Lcom/railty/cerfandroid/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/LauncherActivity$NameCallback;
    }
.end annotation


# static fields
.field private static final CPU_RATE_VALUES:[D

.field private static final EXTRA_EDIT_RUNNING:Ljava/lang/String; = "com.railty.cerfandroid.EDIT_RUNNING"

.field private static final EXTRA_RESTORE_STATE:Ljava/lang/String; = "com.railty.cerfandroid.RESTORE_STATE"

.field private static final REQUEST_CF:I = 0x3

.field private static final REQUEST_EXPORT:I = 0x4

.field private static final REQUEST_IMPORT:I = 0x5

.field private static final REQUEST_ROM:I = 0x1

.field private static final REQUEST_SHARE:I = 0x2

.field private static final SIZES:[[I

.field private static final SIZE_LABELS:[Ljava/lang/String;

.field private static final SPEED_LABELS:[Ljava/lang/String;

.field private static final THROTTLE_VALUES:[D


# instance fields
.field private availableSizeLabels:[Ljava/lang/String;

.field private availableSizes:[[I

.field private bppSpinner:Landroid/widget/Spinner;

.field private cachedRomIdentityInput:Ljava/lang/String;

.field private cachedRomKey:Ljava/lang/String;

.field private cameraCheck:Landroid/widget/CheckBox;

.field private cellCheck:Landroid/widget/CheckBox;

.field private cfCreateButton:Landroid/widget/Button;

.field private cfImageActions:Landroid/widget/LinearLayout;

.field private cfImageButton:Landroid/widget/Button;

.field private clipboardCheck:Landroid/widget/CheckBox;

.field private cpuRateSpinner:Landroid/widget/Spinner;

.field private customRow:Landroid/widget/LinearLayout;

.field private dpiEdit:Landroid/widget/EditText;

.field private dpiSpinner:Landroid/widget/Spinner;

.field private editingRunningEmulator:Z

.field private extraDllCheck:Landroid/widget/CheckBox;

.field private gaNicCheck:Landroid/widget/CheckBox;

.field private glesCheck:Landroid/widget/CheckBox;

.field private heightEdit:Landroid/widget/EditText;

.field private hideImeCheck:Landroid/widget/CheckBox;

.field private hideTaskbarCheck:Landroid/widget/CheckBox;

.field private keypadLabel:Landroid/widget/TextView;

.field private keypadSpinner:Landroid/widget/Spinner;

.field private maxScreenHeight:I

.field private maxScreenWidth:I

.field private nledCheck:Landroid/widget/CheckBox;

.field private oemEdit:Landroid/widget/EditText;

.field private operatorEdit:Landroid/widget/EditText;

.field private orientationSpinner:Landroid/widget/Spinner;

.field private pcmciaSpinner:Landroid/widget/Spinner;

.field private romLabel:Landroid/widget/TextView;

.field private settings:Lcom/railty/cerfandroid/DeviceSettings;

.field private shareButton:Landroid/widget/Button;

.field private shareCheck:Landroid/widget/CheckBox;

.field private shareLabel:Landroid/widget/EditText;

.field private shareNameEdit:Landroid/widget/EditText;

.field private sizeSpinner:Landroid/widget/Spinner;

.field private stateDeleteButton:Landroid/widget/Button;

.field private stateSummary:Landroid/widget/TextView;

.field private throttleSpinner:Landroid/widget/Spinner;

.field private timeSyncCheck:Landroid/widget/CheckBox;

.field private touchInputSpinner:Landroid/widget/Spinner;

.field private widthEdit:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 48
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const/16 v2, 0xf0

    const/16 v3, 0x140

    filled-new-array {v2, v3}, [I

    move-result-object v4

    const/16 v5, 0x190

    filled-new-array {v2, v5}, [I

    move-result-object v6

    move-object v7, v4

    filled-new-array {v3, v2}, [I

    move-result-object v4

    const/16 v8, 0x1e0

    filled-new-array {v3, v8}, [I

    move-result-object v9

    filled-new-array {v5, v2}, [I

    move-result-object v2

    const/16 v10, 0x320

    move-object v11, v6

    move-object v6, v2

    move-object v2, v7

    filled-new-array {v5, v10}, [I

    move-result-object v7

    const/16 v12, 0xea

    filled-new-array {v8, v12}, [I

    move-result-object v12

    const/16 v13, 0x110

    filled-new-array {v8, v13}, [I

    move-result-object v13

    filled-new-array {v8, v3}, [I

    move-result-object v3

    const/16 v14, 0x280

    move-object v15, v3

    move-object v3, v11

    filled-new-array {v8, v14}, [I

    move-result-object v11

    move-object/from16 v16, v12

    filled-new-array {v8, v10}, [I

    move-result-object v12

    move/from16 v46, v0

    const/16 v0, 0x258

    move-object/from16 v17, v9

    move-object v9, v13

    filled-new-array {v0, v10}, [I

    move-result-object v13

    const/16 v10, 0x400

    filled-new-array {v0, v10}, [I

    move-result-object v19

    const/16 v0, 0x168

    filled-new-array {v14, v0}, [I

    move-result-object v0

    filled-new-array {v14, v5}, [I

    move-result-object v5

    filled-new-array {v14, v8}, [I

    move-result-object v14

    const/16 v10, 0x2d0

    filled-new-array {v10, v8}, [I

    move-result-object v22

    const/16 v8, 0x500

    move-object/from16 v24, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v19

    filled-new-array {v10, v8}, [I

    move-result-object v19

    const/16 v10, 0x300

    const/16 v8, 0x400

    const/16 v27, 0x258

    filled-new-array {v10, v8}, [I

    move-result-object v20

    const/16 v8, 0x1e0

    const/16 v10, 0x320

    filled-new-array {v10, v8}, [I

    move-result-object v28

    move/from16 v8, v27

    move-object/from16 v27, v22

    filled-new-array {v10, v8}, [I

    move-result-object v22

    const/16 v8, 0x500

    filled-new-array {v10, v8}, [I

    move-result-object v31

    const/16 v8, 0x356

    const/16 v10, 0x1e0

    filled-new-array {v8, v10}, [I

    move-result-object v8

    const/16 v10, 0x384

    move-object/from16 v29, v0

    const/16 v0, 0x640

    const/16 v32, 0x2d0

    filled-new-array {v10, v0}, [I

    move-result-object v25

    const/16 v0, 0x3c0

    const/16 v10, 0x21c

    filled-new-array {v0, v10}, [I

    move-result-object v0

    const/16 v10, 0x258

    move-object/from16 v30, v0

    const/16 v0, 0x400

    filled-new-array {v0, v10}, [I

    move-result-object v10

    move-object/from16 v35, v1

    move-object/from16 v36, v28

    const/16 v1, 0x300

    filled-new-array {v0, v1}, [I

    move-result-object v28

    const/16 v0, 0x438

    const/16 v1, 0x780

    move-object/from16 v18, v27

    const/16 v37, 0x320

    move-object/from16 v27, v10

    move-object v10, v15

    move-object/from16 v15, v29

    filled-new-array {v0, v1}, [I

    move-result-object v29

    const/16 v0, 0x480

    const/16 v1, 0x360

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x4b0

    move-object/from16 v40, v0

    const/16 v0, 0x960

    filled-new-array {v1, v0}, [I

    move-result-object v0

    move-object/from16 v26, v0

    move/from16 v1, v32

    const/16 v0, 0x500

    filled-new-array {v0, v1}, [I

    move-result-object v32

    move/from16 v1, v37

    filled-new-array {v0, v1}, [I

    move-result-object v1

    move-object/from16 v37, v1

    const/16 v1, 0x400

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x556

    move-object/from16 v21, v0

    const/16 v0, 0x300

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x5a0

    move-object/from16 v23, v0

    move-object/from16 v34, v21

    move-object/from16 v21, v36

    const/16 v0, 0x384

    filled-new-array {v1, v0}, [I

    move-result-object v36

    const/16 v0, 0xa00

    move-object/from16 v33, v37

    const/16 v42, 0x640

    filled-new-array {v1, v0}, [I

    move-result-object v37

    const/16 v0, 0xc10

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x384

    move-object/from16 v41, v0

    move/from16 v0, v42

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x438

    move-object/from16 v39, v0

    const/16 v0, 0x780

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x800

    move-object/from16 v38, v0

    const/16 v0, 0x600

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x5a0

    move-object/from16 v42, v0

    const/16 v0, 0xa00

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0xb40

    move-object/from16 v43, v0

    const/16 v0, 0x708

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/16 v1, 0xf00

    move-object/from16 v44, v0

    const/16 v0, 0x870

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/4 v1, -0x1

    filled-new-array {v1, v1}, [I

    move-result-object v45

    move-object/from16 v1, v24

    move-object/from16 v24, v8

    move-object v8, v1

    move-object/from16 v1, v35

    move-object/from16 v35, v23

    move-object/from16 v23, v31

    move-object/from16 v31, v26

    move-object/from16 v26, v30

    move-object/from16 v30, v40

    move-object/from16 v40, v38

    move-object/from16 v38, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v0

    filled-new-array/range {v1 .. v45}, [[I

    move-result-object v0

    sput-object v0, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    .line 61
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uc790\ub3d9 (\uae30\ubcf8\uac12)"

    aput-object v1, v0, v46

    const-string v1, "240 x 320"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "240 x 400"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v4, "320 x 240"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "320 x 480"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "400 x 240"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "400 x 800"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "480 x 234"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "480 x 272"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "480 x 320"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v4, "480 x 640"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v4, "480 x 800"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v4, "600 x 800"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v4, "600 x 1024"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-string v4, "640 x 360"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string v4, "640 x 400"

    aput-object v4, v0, v1

    const-string v1, "640 x 480"

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const/16 v1, 0x11

    const-string v5, "720 x 480"

    aput-object v5, v0, v1

    const/16 v1, 0x12

    const-string v5, "720 x 1280"

    aput-object v5, v0, v1

    const/16 v1, 0x13

    const-string v5, "768 x 1024"

    aput-object v5, v0, v1

    const/16 v1, 0x14

    const-string v5, "800 x 480"

    aput-object v5, v0, v1

    const/16 v1, 0x15

    const-string v5, "800 x 600"

    aput-object v5, v0, v1

    const/16 v1, 0x16

    const-string v5, "800 x 1280"

    aput-object v5, v0, v1

    const/16 v1, 0x17

    const-string v5, "854 x 480"

    aput-object v5, v0, v1

    const/16 v1, 0x18

    const-string v5, "900 x 1600"

    aput-object v5, v0, v1

    const/16 v1, 0x19

    const-string v5, "960 x 540"

    aput-object v5, v0, v1

    const/16 v1, 0x1a

    const-string v5, "1024 x 600"

    aput-object v5, v0, v1

    const/16 v1, 0x1b

    const-string v5, "1024 x 768"

    aput-object v5, v0, v1

    const/16 v1, 0x1c

    const-string v5, "1080 x 1920"

    aput-object v5, v0, v1

    const/16 v1, 0x1d

    const-string v5, "1152 x 864"

    aput-object v5, v0, v1

    const/16 v1, 0x1e

    const-string v5, "1200 x 2400"

    aput-object v5, v0, v1

    const/16 v1, 0x1f

    const-string v5, "1280 x 720"

    aput-object v5, v0, v1

    const/16 v1, 0x20

    const-string v5, "1280 x 800"

    aput-object v5, v0, v1

    const/16 v1, 0x21

    const-string v5, "1280 x 1024"

    aput-object v5, v0, v1

    const/16 v1, 0x22

    const-string v5, "1366 x 768"

    aput-object v5, v0, v1

    const/16 v1, 0x23

    const-string v5, "1440 x 900"

    aput-object v5, v0, v1

    const/16 v1, 0x24

    const-string v5, "1440 x 2560"

    aput-object v5, v0, v1

    const/16 v1, 0x25

    const-string v5, "1440 x 3088"

    aput-object v5, v0, v1

    const/16 v1, 0x26

    const-string v5, "1600 x 900"

    aput-object v5, v0, v1

    const/16 v1, 0x27

    const-string v5, "1920 x 1080"

    aput-object v5, v0, v1

    const/16 v1, 0x28

    const-string v5, "2048 x 1536"

    aput-object v5, v0, v1

    const/16 v1, 0x29

    const-string v5, "2560 x 1440"

    aput-object v5, v0, v1

    const/16 v1, 0x2a

    const-string v5, "2880 x 1800"

    aput-object v5, v0, v1

    const/16 v1, 0x2b

    const-string v5, "3840 x 2160"

    aput-object v5, v0, v1

    const/16 v1, 0x2c

    const-string v5, "\uc9c1\uc811 \uc785\ub825 (160\u20134096)"

    aput-object v5, v0, v1

    sput-object v0, Lcom/railty/cerfandroid/LauncherActivity;->SIZE_LABELS:[Ljava/lang/String;

    .line 111
    const/16 v0, 0x11

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/railty/cerfandroid/LauncherActivity;->THROTTLE_VALUES:[D

    .line 112
    new-array v0, v4, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/railty/cerfandroid/LauncherActivity;->CPU_RATE_VALUES:[D

    .line 113
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0.1"

    aput-object v1, v0, v46

    const-string v1, "0.2"

    aput-object v1, v0, v2

    const-string v1, "0.3"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "0.4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0.5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0.6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0.7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0.8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "0.9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uc790\ub3d9 (1)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1.5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/railty/cerfandroid/LauncherActivity;->SPEED_LABELS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff8000000000000L    # 1.5
        0x4000000000000000L    # 2.0
        0x4008000000000000L    # 3.0
        0x4010000000000000L    # 4.0
        0x4014000000000000L    # 5.0
        0x4024000000000000L    # 10.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff8000000000000L    # 1.5
        0x4000000000000000L    # 2.0
        0x4008000000000000L    # 3.0
        0x4010000000000000L    # 4.0
        0x4014000000000000L    # 5.0
        0x4024000000000000L    # 10.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/16 v0, 0x1000

    iput v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    .line 79
    iput v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    return-void
.end method

.method private AskName(Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V
    .locals 2

    .line 1522
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1524
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1526
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1527
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1528
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1529
    const-string p2, "\ucde8\uc18c"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/railty/cerfandroid/LauncherActivity$33;

    invoke-direct {p2, p0, v0, p3}, Lcom/railty/cerfandroid/LauncherActivity$33;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Landroid/widget/EditText;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V

    .line 1530
    const-string p3, "\ud655\uc778"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1537
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1538
    return-void
.end method

.method private Body(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 1551
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1552
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1554
    const/16 p1, 0x32

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1555
    return-object v0
.end method

.method private BuildAvailableSizes()V
    .locals 7

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    sget-object v2, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v2, Lcom/railty/cerfandroid/LauncherActivity;->SIZE_LABELS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const/4 v2, 0x1

    move v4, v2

    :goto_0
    sget-object v5, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    array-length v5, v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_1

    .line 641
    sget-object v5, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    aget-object v5, v5, v4

    aget v5, v5, v3

    sget-object v6, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    aget-object v6, v6, v4

    aget v6, v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    if-gt v5, v6, :cond_0

    sget-object v5, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    aget-object v5, v5, v4

    aget v5, v5, v3

    sget-object v6, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    aget-object v6, v6, v4

    aget v6, v6, v2

    .line 642
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    if-gt v5, v6, :cond_0

    .line 643
    sget-object v5, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v5, Lcom/railty/cerfandroid/LauncherActivity;->SIZE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    :cond_1
    sget-object v3, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    sget-object v4, Lcom/railty/cerfandroid/LauncherActivity;->SIZES:[[I

    array-length v4, v4

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uc9c1\uc811 \uc785\ub825 (\ucd5c\ub300 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    .line 650
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizeLabels:[Ljava/lang/String;

    .line 651
    return-void
.end method

.method private static BuildBlankFat16Image(Ljava/io/File;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x400

    const v1, 0xfff4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 794
    add-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 795
    const/16 v3, 0x1ff

    add-int/2addr v1, v3

    const/16 v4, 0x200

    div-int/2addr v1, v4

    .line 797
    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0x20

    add-int/2addr v5, v6

    mul-int/2addr v0, v2

    add-int/2addr v5, v0

    .line 799
    add-int/lit8 v0, v5, 0x3f

    add-int/lit16 v7, v0, 0x3f0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x3f0

    mul-int/lit16 v7, v7, 0x3f0

    .line 801
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v10, "rw"

    move-object/from16 v11, p0

    invoke-direct {v9, v11, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 802
    int-to-long v10, v7

    const-wide/16 v12, 0x200

    mul-long/2addr v10, v12

    :try_start_0
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 803
    new-array v7, v4, [B

    .line 805
    const/16 v10, 0x1be

    const/16 v11, -0x80

    aput-byte v11, v7, v10

    .line 806
    const/16 v10, 0x1bf

    const/16 v12, 0x3f

    invoke-static {v7, v10, v12}, Lcom/railty/cerfandroid/LauncherActivity;->WriteChs([BII)V

    .line 807
    const/16 v10, 0x1c2

    const/4 v13, 0x6

    aput-byte v13, v7, v10

    .line 808
    const/16 v10, 0x1c3

    sub-int/2addr v0, v8

    invoke-static {v7, v10, v0}, Lcom/railty/cerfandroid/LauncherActivity;->WriteChs([BII)V

    .line 809
    const/16 v0, 0x1c6

    invoke-static {v7, v0, v12}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 810
    const/16 v0, 0x1ca

    invoke-static {v7, v0, v5}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 811
    const/16 v0, 0x55

    const/16 v10, 0x1fe

    aput-byte v0, v7, v10

    .line 812
    const/16 v13, -0x56

    aput-byte v13, v7, v3

    .line 813
    const-wide/16 v14, 0x0

    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 814
    invoke-virtual {v9, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 816
    new-array v7, v4, [B

    .line 817
    const/16 v14, -0x15

    const/4 v15, 0x0

    aput-byte v14, v7, v15

    .line 818
    const/4 v14, -0x2

    aput-byte v14, v7, v8

    .line 819
    const-string v14, "MSWIN4.1"

    move/from16 p0, v0

    const/4 v0, 0x3

    invoke-static {v7, v0, v14}, Lcom/railty/cerfandroid/LauncherActivity;->PutAscii([BILjava/lang/String;)V

    .line 820
    const/16 v0, 0xb

    invoke-static {v7, v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 821
    const/16 v0, 0xd

    aput-byte v2, v7, v0

    .line 822
    const/16 v0, 0xe

    invoke-static {v7, v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 823
    const/16 v0, 0x10

    aput-byte v8, v7, v0

    .line 824
    const/16 v14, 0x11

    invoke-static {v7, v14, v4}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 825
    const v14, 0xffff

    if-gt v5, v14, :cond_0

    const/16 v6, 0x13

    invoke-static {v7, v6, v5}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    goto :goto_0

    .line 826
    :cond_0
    invoke-static {v7, v6, v5}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 827
    :goto_0
    const/16 v5, 0x15

    const/4 v6, -0x8

    aput-byte v6, v7, v5

    .line 828
    const/16 v5, 0x16

    invoke-static {v7, v5, v1}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 829
    const/16 v5, 0x18

    invoke-static {v7, v5, v12}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 830
    const/16 v5, 0x1a

    invoke-static {v7, v5, v0}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 831
    const/16 v0, 0x1c

    invoke-static {v7, v0, v12}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 832
    const/16 v0, 0x24

    aput-byte v11, v7, v0

    .line 833
    const/16 v0, 0x26

    const/16 v5, 0x29

    aput-byte v5, v7, v0

    .line 834
    const/16 v0, 0x27

    const v5, -0x31a030ff

    invoke-static {v7, v0, v5}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 835
    const-string v0, "CERF CF    "

    const/16 v5, 0x2b

    invoke-static {v7, v5, v0}, Lcom/railty/cerfandroid/LauncherActivity;->PutAscii([BILjava/lang/String;)V

    .line 836
    const-string v0, "FAT16   "

    const/16 v5, 0x36

    invoke-static {v7, v5, v0}, Lcom/railty/cerfandroid/LauncherActivity;->PutAscii([BILjava/lang/String;)V

    .line 837
    aput-byte p0, v7, v10

    .line 838
    aput-byte v13, v7, v3

    .line 839
    const-wide/16 v5, 0x7e00

    invoke-virtual {v9, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 840
    invoke-virtual {v9, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 842
    new-array v0, v4, [B

    .line 843
    const v3, 0xfff8

    invoke-static {v0, v15, v3}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 844
    invoke-static {v0, v2, v14}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 845
    const-wide/32 v2, 0x8000

    invoke-virtual {v9, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 846
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 847
    new-array v0, v4, [B

    .line 848
    nop

    :goto_1
    if-ge v8, v1, :cond_1

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 849
    :cond_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 850
    return-void

    .line 801
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private static BuildBlankFat32Image(Ljava/io/File;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    move/from16 v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/16 v3, 0x200

    if-gt v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 856
    :goto_0
    int-to-long v5, v0

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x200

    div-long/2addr v5, v7

    int-to-long v9, v4

    add-long/2addr v5, v9

    const-wide/16 v11, 0x1

    sub-long/2addr v5, v11

    div-long/2addr v5, v9

    long-to-int v0, v5

    .line 858
    const v5, 0xfff6

    if-lt v0, v5, :cond_1

    .line 860
    int-to-long v5, v0

    const-wide/16 v9, 0x2

    add-long/2addr v5, v9

    const-wide/16 v9, 0x4

    mul-long/2addr v5, v9

    const-wide/16 v9, 0x1ff

    add-long/2addr v5, v9

    long-to-int v5, v5

    div-int/2addr v5, v3

    .line 861
    mul-int/lit8 v6, v5, 0x2

    const/16 v9, 0x20

    add-int/2addr v6, v9

    mul-int v10, v0, v4

    add-int/2addr v6, v10

    .line 863
    add-int/lit8 v10, v6, 0x3f

    add-int/lit16 v11, v10, 0x3f0

    sub-int/2addr v11, v2

    div-int/lit16 v11, v11, 0x3f0

    mul-int/lit16 v11, v11, 0x3f0

    .line 865
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v13, "rw"

    move-object/from16 v14, p0

    invoke-direct {v12, v14, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 866
    int-to-long v13, v11

    mul-long/2addr v13, v7

    :try_start_0
    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 868
    new-array v11, v3, [B

    .line 870
    const/16 v13, 0x1be

    const/16 v14, -0x80

    aput-byte v14, v11, v13

    .line 871
    const/16 v13, 0x1bf

    const/16 v15, 0x3f

    invoke-static {v11, v13, v15}, Lcom/railty/cerfandroid/LauncherActivity;->WriteChs([BII)V

    .line 872
    const/16 v13, 0x1c2

    const/16 v16, 0xc

    aput-byte v16, v11, v13

    .line 873
    const/16 v13, 0x1c3

    sub-int/2addr v10, v2

    invoke-static {v11, v13, v10}, Lcom/railty/cerfandroid/LauncherActivity;->WriteChs([BII)V

    .line 874
    const/16 v10, 0x1c6

    invoke-static {v11, v10, v15}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 875
    const/16 v10, 0x1ca

    invoke-static {v11, v10, v6}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 876
    const/16 v10, 0x55

    const/16 v13, 0x1fe

    aput-byte v10, v11, v13

    .line 877
    const/16 v16, -0x56

    const/16 v17, 0x1ff

    aput-byte v16, v11, v17

    .line 878
    move-wide/from16 v18, v7

    const-wide/16 v7, 0x0

    invoke-virtual {v12, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 879
    invoke-virtual {v12, v11}, Ljava/io/RandomAccessFile;->write([B)V

    .line 881
    new-array v7, v3, [B

    .line 882
    const/16 v8, -0x15

    const/4 v11, 0x0

    aput-byte v8, v7, v11

    .line 883
    const/16 v8, 0x58

    aput-byte v8, v7, v2

    .line 884
    const/16 p0, -0x70

    const/4 v8, 0x2

    aput-byte p0, v7, v8

    .line 885
    move/from16 p0, v10

    const-string v10, "MSWIN4.1"

    move/from16 p1, v13

    const/4 v13, 0x3

    invoke-static {v7, v13, v10}, Lcom/railty/cerfandroid/LauncherActivity;->PutAscii([BILjava/lang/String;)V

    .line 886
    const/16 v10, 0xb

    invoke-static {v7, v10, v3}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 887
    const/16 v10, 0xd

    int-to-byte v4, v4

    aput-byte v4, v7, v10

    .line 888
    const/16 v4, 0xe

    invoke-static {v7, v4, v9}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 889
    const/16 v4, 0x10

    aput-byte v8, v7, v4

    .line 890
    const/16 v10, 0x15

    const/16 v20, -0x8

    aput-byte v20, v7, v10

    .line 891
    const/16 v10, 0x18

    invoke-static {v7, v10, v15}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 892
    const/16 v10, 0x1a

    invoke-static {v7, v10, v4}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 893
    const/16 v4, 0x1c

    invoke-static {v7, v4, v15}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 894
    invoke-static {v7, v9, v6}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 895
    const/16 v4, 0x24

    invoke-static {v7, v4, v5}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 896
    const/16 v4, 0x2c

    invoke-static {v7, v4, v8}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 897
    const/16 v4, 0x30

    invoke-static {v7, v4, v2}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 898
    const/16 v4, 0x32

    const/4 v6, 0x6

    invoke-static {v7, v4, v6}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 899
    const/16 v4, 0x40

    aput-byte v14, v7, v4

    .line 900
    const/16 v4, 0x42

    const/16 v6, 0x29

    aput-byte v6, v7, v4

    .line 901
    const/16 v4, 0x43

    const v6, -0x31a030ff

    invoke-static {v7, v4, v6}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 902
    const-string v4, "CERF CF    "

    const/16 v6, 0x47

    invoke-static {v7, v6, v4}, Lcom/railty/cerfandroid/LauncherActivity;->PutAscii([BILjava/lang/String;)V

    .line 903
    const-string v4, "FAT32   "

    const/16 v6, 0x52

    invoke-static {v7, v6, v4}, Lcom/railty/cerfandroid/LauncherActivity;->PutAscii([BILjava/lang/String;)V

    .line 904
    aput-byte p0, v7, p1

    .line 905
    aput-byte v16, v7, v17

    .line 906
    const-wide/16 v8, 0x7e00

    invoke-virtual {v12, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 907
    invoke-virtual {v12, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 908
    const-wide/32 v8, 0x8a00

    invoke-virtual {v12, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 909
    invoke-virtual {v12, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 911
    new-array v4, v3, [B

    .line 912
    const v6, 0x41615252

    invoke-static {v4, v11, v6}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 913
    const/16 v6, 0x1e4

    const v7, 0x61417272

    invoke-static {v4, v6, v7}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 914
    const/16 v6, 0x1e8

    sub-int/2addr v0, v2

    invoke-static {v4, v6, v0}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 915
    const/16 v0, 0x1ec

    invoke-static {v4, v0, v13}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 916
    const/16 v0, 0x1fc

    const/high16 v2, -0x55ab0000

    invoke-static {v4, v0, v2}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 917
    const-wide/32 v6, 0x8000

    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 918
    invoke-virtual {v12, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 919
    const-wide/32 v6, 0x8c00

    invoke-virtual {v12, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 920
    invoke-virtual {v12, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 922
    new-array v0, v3, [B

    .line 923
    const v2, 0xffffff8

    invoke-static {v0, v11, v2}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 924
    const/4 v2, 0x4

    const v3, 0xfffffff

    invoke-static {v0, v2, v3}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 925
    invoke-static {v0, v1, v3}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe32([BII)V

    .line 927
    const-wide/32 v1, 0xbe00

    invoke-static {v12, v1, v2, v5, v0}, Lcom/railty/cerfandroid/LauncherActivity;->WriteFat32Table(Ljava/io/RandomAccessFile;JI[B)V

    .line 928
    int-to-long v3, v5

    mul-long v3, v3, v18

    add-long/2addr v3, v1

    invoke-static {v12, v3, v4, v5, v0}, Lcom/railty/cerfandroid/LauncherActivity;->WriteFat32Table(Ljava/io/RandomAccessFile;JI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 931
    return-void

    .line 865
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 858
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FAT32 \uc6a9\ub7c9\uc774 \ub108\ubb34 \uc791\uc2b5\ub2c8\ub2e4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private BuildContainerBar(Landroid/widget/LinearLayout;)V
    .locals 12

    .line 1337
    const-string v0, "\ucee8\ud14c\uc774\ub108"

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1338
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->List(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1339
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ActiveId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    iget-boolean v2, p0, Lcom/railty/cerfandroid/LauncherActivity;->editingRunningEmulator:Z

    if-eqz v2, :cond_2

    .line 1341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/railty/cerfandroid/Containers$Info;

    .line 1342
    iget-object v3, v2, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (\uc2e4\ud589 \uc911\uc5d0\ub294 \ubc14\uafc0 \uc218 \uc5c6\uc74c)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1343
    :cond_1
    return-void

    .line 1345
    :cond_2
    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 1346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    nop

    .line 1348
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1349
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/railty/cerfandroid/Containers$Info;

    .line 1350
    iget-object v7, v6, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    .line 1351
    iget-wide v8, v6, Lcom/railty/cerfandroid/Containers$Info;->lastRun:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 1352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  \u00b7  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "yy.MM.dd HH:mm"

    iget-wide v9, v6, Lcom/railty/cerfandroid/Containers$Info;->lastRun:J

    invoke-static {v8, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1353
    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v6, v6, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v4

    .line 1348
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1356
    :cond_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1357
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1358
    nop

    .line 1359
    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$25;

    invoke-direct {v1, p0, v5, v0}, Lcom/railty/cerfandroid/LauncherActivity$25;-><init>(Lcom/railty/cerfandroid/LauncherActivity;ILjava/util/List;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1370
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1371
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/railty/cerfandroid/Containers$Info;

    .line 1372
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1373
    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$26;

    invoke-direct {v3, p0}, Lcom/railty/cerfandroid/LauncherActivity$26;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v4, "\uc0c8\ub85c \ub9cc\ub4e4\uae30"

    invoke-direct {p0, v4, v3}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1386
    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$27;

    invoke-direct {v3, p0, v1}, Lcom/railty/cerfandroid/LauncherActivity$27;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Lcom/railty/cerfandroid/Containers$Info;)V

    const-string v4, "\ubcf5\uc81c"

    invoke-direct {p0, v4, v3}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1404
    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$28;

    invoke-direct {v3, p0, v1}, Lcom/railty/cerfandroid/LauncherActivity$28;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Lcom/railty/cerfandroid/Containers$Info;)V

    const-string v4, "\uc774\ub984 \ubcc0\uacbd"

    invoke-direct {p0, v4, v3}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1416
    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$29;

    invoke-direct {v3, p0, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity$29;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Ljava/util/List;Lcom/railty/cerfandroid/Containers$Info;)V

    const-string v0, "\uc0ad\uc81c"

    invoke-direct {p0, v0, v3}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1438
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1439
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1440
    new-instance v2, Lcom/railty/cerfandroid/LauncherActivity$30;

    invoke-direct {v2, p0, v1}, Lcom/railty/cerfandroid/LauncherActivity$30;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Lcom/railty/cerfandroid/Containers$Info;)V

    const-string v1, "zip \ub0b4\ubcf4\ub0b4\uae30"

    invoke-direct {p0, v1, v2}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1451
    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$31;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/LauncherActivity$31;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v2, "zip \uac00\uc838\uc624\uae30"

    invoke-direct {p0, v2, v1}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1460
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1461
    return-void
.end method

.method private CanUseShareFolder(Ljava/lang/String;)Z
    .locals 2

    .line 1138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1139
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 1140
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    return p1

    .line 1141
    :cond_1
    return v1
.end method

.method private ConfirmDeleteState()V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    const-string v1, "\uc800\uc7a5 \uc0c1\ud0dc \uc0ad\uc81c"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v2, v2, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 595
    invoke-static {v2}, Lcom/railty/cerfandroid/DeviceStateStore;->RomLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uc5d0 \uc5f0\uacb0\ub41c \uc571 \ub0b4\ubd80 \uc800\uc7a5 \uc0c1\ud0dc\ub97c \uc0ad\uc81c\ud560\uae4c\uc694?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$20;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/LauncherActivity$20;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 597
    const-string v2, "\uc0ad\uc81c"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 610
    const-string v1, "\ucde8\uc18c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 612
    return-void
.end method

.method private CopyCfImage(Landroid/net/Uri;)V
    .locals 7

    .line 1197
    nop

    .line 1198
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1199
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1201
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\\\\/:*?\"<>|]"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1198
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 1203
    :cond_1
    const-string v0, "cf.img"

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1204
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DeviceDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cf-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1205
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1206
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1207
    if-eqz v1, :cond_5

    .line 1208
    const/high16 v4, 0x10000

    :try_start_4
    new-array v4, v4, [B

    .line 1210
    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 1211
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1214
    :cond_4
    nop

    .line 1215
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    .line 1216
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    const-string v1, "cf"

    iput-object v1, p1, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    .line 1217
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->LoadControls()V

    .line 1218
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Refresh()V

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CF \uc774\ubbf8\uc9c0 \uc120\ud0dd\ub428: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1220
    return-void

    .line 1205
    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 1207
    :cond_5
    :try_start_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\uc5f4 \uc218 \uc5c6\uc74c"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1205
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 1211
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CF \uc774\ubbf8\uc9c0 \ubcf5\uc0ac \uc2e4\ud328: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1213
    return-void
.end method

.method private CopyRom(Landroid/net/Uri;)V
    .locals 6

    .line 1223
    nop

    .line 1224
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1225
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    const-string v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1227
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\\\\/:*?\"<>|]"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1224
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 1229
    :cond_1
    const-string v0, "NK.bin"

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1230
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DeviceDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "rom"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 1232
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1233
    :try_start_2
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1234
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1235
    if-eqz p1, :cond_5

    .line 1236
    const/high16 v0, 0x10000

    :try_start_4
    new-array v0, v0, [B

    .line 1238
    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 1239
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1242
    :cond_4
    nop

    .line 1243
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 1244
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomIdentityInput:Ljava/lang/String;

    .line 1245
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    .line 1246
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Refresh()V

    .line 1247
    return-void

    .line 1233
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 1235
    :cond_5
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\uc5f4 \uc218 \uc5c6\uc74c"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1233
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz p1, :cond_6

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    :try_start_b
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 1239
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROM \ubcf5\uc0ac \uc2e4\ud328: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1241
    return-void
.end method

.method private CreateCfImage(Ljava/lang/String;I)V
    .locals 8

    .line 740
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 742
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 743
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 748
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 749
    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, p1

    .line 750
    :goto_1
    if-lez v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 751
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 752
    const/4 p1, 0x2

    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 753
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 752
    add-int/2addr p1, v2

    goto :goto_2

    .line 754
    :cond_4
    nop

    .line 755
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cfCreateButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 756
    const-string p1, "CF \uc774\ubbf8\uc9c0 \uc0dd\uc131 \uc911\u2026"

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 757
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/railty/cerfandroid/LauncherActivity$22;

    invoke-direct {v0, p0, p2, v3}, Lcom/railty/cerfandroid/LauncherActivity$22;-><init>(Lcom/railty/cerfandroid/LauncherActivity;ILjava/io/File;)V

    const-string p2, "cerf-cf-image-builder"

    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 787
    return-void

    .line 744
    :cond_5
    :goto_3
    const-string p1, "\ub0b4\ubd80 \uc800\uc7a5\uc18c \ub8e8\ud2b8\uc5d0 \uc4f8 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ubaa8\ub4e0 \ud30c\uc77c \uc811\uadfc \uad8c\ud55c\uc744 \ud655\uc778\ud558\uc138\uc694"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 745
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 746
    return-void
.end method

.method private CreateExeShortcut()V
    .locals 5

    .line 1261
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->StoreControls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-virtual {v1, p0}, Lcom/railty/cerfandroid/DeviceSettings;->Save(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    nop

    .line 1268
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    const-string v1, "\uba3c\uc800 \uacf5\uc720 \ud3f4\ub354\ub97c \ucf1c \uc8fc\uc138\uc694"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1270
    return-void

    .line 1272
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v2, v2, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Lcom/railty/cerfandroid/LauncherActivity;->FindExe(Ljava/io/File;Ljava/lang/String;ILjava/util/List;)V

    .line 1275
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1276
    const-string v1, "\uacf5\uc720 \ud3f4\ub354\uc5d0 EXE\uac00 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1277
    return-void

    .line 1279
    :cond_2
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1281
    const-string v1, "\uc2e4\ud589\ud560 \ud504\ub85c\uadf8\ub7a8"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    .line 1282
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$24;

    invoke-direct {v3, p0, v2}, Lcom/railty/cerfandroid/LauncherActivity$24;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1296
    return-void

    .line 1264
    :catch_0
    move-exception v1

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uc124\uc815 \uc800\uc7a5 \uc2e4\ud328: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1266
    return-void
.end method

.method private static FindExe(Ljava/io/File;Ljava/lang/String;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1299
    const/4 v0, 0x6

    if-gt p2, v0, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    goto :goto_3

    .line 1300
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1301
    if-nez p0, :cond_1

    return-void

    .line 1302
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    .line 1303
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1304
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v2, v3, v4, p3}, Lcom/railty/cerfandroid/LauncherActivity;->FindExe(Ljava/io/File;Ljava/lang/String;ILjava/util/List;)V

    goto :goto_2

    .line 1305
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".exe"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1307
    :cond_5
    return-void

    .line 1299
    :cond_6
    :goto_3
    return-void
.end method

.method private static FindSpeedIndex([DD)I
    .locals 6

    .line 1082
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    aget-wide v2, p0, v1

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    return v1

    .line 1082
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    move p1, v0

    :goto_1
    array-length p2, p0

    if-ge p1, p2, :cond_3

    .line 1085
    aget-wide v1, p0, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v1, v3

    if-nez p2, :cond_2

    return p1

    .line 1084
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1086
    :cond_3
    return v0
.end method

.method private LoadControls()V
    .locals 11

    .line 503
    nop

    .line 504
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 506
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    array-length v4, v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_2

    .line 507
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v5, v5, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    aget-object v4, v4, v3

    aget v4, v4, v1

    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v5, v5, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    if-ne v4, v5, :cond_0

    .line 508
    move v0, v3

    .line 506
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    :cond_1
    move v0, v2

    .line 510
    :cond_2
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->sizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 511
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->orientationSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 512
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->phoneKeypad:Z

    const/4 v5, 0x2

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->qwertyKeypad:Z

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 513
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    const/16 v6, 0x8

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 514
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->hideTaskbarCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->hideTaskbar:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 516
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->hideImeCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->hideImeState:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->timeSyncCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->timeSync:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 518
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->clipboardCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 519
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cameraCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->cameraLink:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 520
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->nledCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->nledLink:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 521
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->touchInputSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 522
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->glesCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->glesEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 523
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cellCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 524
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->extraDllCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 527
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->gaNicCheck:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->gaNicEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 528
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->throttleSpinner:Landroid/widget/Spinner;

    sget-object v4, Lcom/railty/cerfandroid/LauncherActivity;->THROTTLE_VALUES:[D

    iget-object v7, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-wide v7, v7, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    invoke-static {v4, v7, v8}, Lcom/railty/cerfandroid/LauncherActivity;->FindSpeedIndex([DD)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 529
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cpuRateSpinner:Landroid/widget/Spinner;

    sget-object v4, Lcom/railty/cerfandroid/LauncherActivity;->CPU_RATE_VALUES:[D

    iget-object v7, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-wide v7, v7, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    invoke-static {v4, v7, v8}, Lcom/railty/cerfandroid/LauncherActivity;->FindSpeedIndex([DD)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 530
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->widthEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->heightEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    aget-object v0, v4, v0

    aget v0, v0, v2

    if-gez v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v6

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->bppSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    const/4 v4, 0x3

    if-ne v3, v6, :cond_8

    move v3, v2

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    const/16 v7, 0x18

    if-ne v3, v7, :cond_9

    move v3, v5

    goto :goto_5

    .line 534
    :cond_9
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    const/16 v7, 0x20

    if-ne v3, v7, :cond_a

    move v3, v4

    goto :goto_5

    :cond_a
    move v3, v1

    .line 533
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 535
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    const/16 v3, 0x9

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v3

    .line 536
    :goto_6
    new-array v7, v6, [I

    fill-array-data v7, :array_0

    .line 537
    move v8, v2

    :goto_7
    if-ge v8, v6, :cond_d

    .line 538
    iget-object v9, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v9, v9, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    aget v10, v7, v8

    if-ne v9, v10, :cond_c

    add-int/lit8 v0, v8, 0x1

    .line 537
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 539
    :cond_d
    iget-object v7, p0, Lcom/railty/cerfandroid/LauncherActivity;->dpiSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 540
    iget-object v7, p0, Lcom/railty/cerfandroid/LauncherActivity;->dpiEdit:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v8, v8, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    if-lez v8, :cond_e

    iget-object v8, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v8, v8, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_e
    const-string v8, "96"

    :goto_8
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v7, p0, Lcom/railty/cerfandroid/LauncherActivity;->dpiEdit:Landroid/widget/EditText;

    if-ne v0, v3, :cond_f

    move v6, v2

    :cond_f
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v6, "ne2000"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v2, v1

    goto :goto_9

    .line 543
    :cond_10
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v5

    goto :goto_9

    .line 544
    :cond_11
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v5, "cf"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v2, v4

    goto :goto_9

    .line 545
    :cond_12
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v4, "modem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x4

    .line 542
    :cond_13
    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 546
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->UpdateCfImageActions()V

    .line 547
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v2, v2, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 548
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 553
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DefaultShareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 554
    :cond_14
    return-void

    nop

    :array_0
    .array-data 4
        0x48
        0x60
        0x78
        0x90
        0xa0
        0xc0
        0xf0
        0x140
    .end array-data
.end method

.method private NumberEdit(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1

    .line 1574
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1575
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1576
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1577
    return-object v0
.end method

.method private PickCfImage()V
    .locals 2

    .line 1167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1171
    return-void
.end method

.method private PickRom()V
    .locals 2

    .line 1160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1164
    return-void
.end method

.method private PickShareFolder()V
    .locals 2

    .line 1174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1175
    return-void
.end method

.method private PinExeShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1310
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 1311
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1315
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x5c

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1316
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ActiveId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1317
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/railty/cerfandroid/ShortcutLaunchActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1318
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1319
    const-string v5, "com.railty.cerfandroid.SHORTCUT_CONTAINER"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1320
    const-string v6, "com.railty.cerfandroid.SHORTCUT_COMMAND"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1321
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v6, v6, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-direct {v5, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/railty/cerfandroid/ExeIcon;->Load(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1322
    if-eqz p1, :cond_1

    .line 1323
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 1325
    :goto_0
    new-instance v5, Landroid/content/pm/ShortcutInfo$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exe-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1326
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p0, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v5, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 1328
    invoke-virtual {v2, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    .line 1329
    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 1330
    invoke-virtual {p1, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 1331
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 1332
    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1333
    const-string p1, "\ubc14\ub85c\uac00\uae30\ub97c \ub9cc\ub4e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1334
    :cond_2
    return-void

    .line 1312
    :cond_3
    :goto_1
    const-string p1, "\uc774 \ud648 \ud654\uba74\uc740 \ubc14\ub85c\uac00\uae30 \ucd94\uac00\ub97c \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1313
    return-void
.end method

.method private static PutAscii([BILjava/lang/String;)V
    .locals 2

    .line 974
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 975
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 976
    return-void
.end method

.method private static PutLe16([BII)V
    .locals 1

    .line 964
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 965
    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 966
    return-void
.end method

.method private static PutLe32([BII)V
    .locals 0

    .line 969
    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 970
    add-int/lit8 p1, p1, 0x2

    ushr-int/lit8 p2, p2, 0x10

    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/LauncherActivity;->PutLe16([BII)V

    .line 971
    return-void
.end method

.method private Refresh()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->romLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\uae30\ubcf8 \ub0b4\uc7a5 ROM (NK.bin)"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->RefreshRomState()V

    .line 560
    return-void
.end method

.method private RefreshRomState()V
    .locals 10

    .line 563
    const-string v0, " \u00b7 "

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateDeleteButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "<bundled NK.bin>"

    .line 567
    :goto_1
    const/16 v2, 0x8

    :try_start_0
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomIdentityInput:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 568
    :cond_3
    iput-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomIdentityInput:Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/railty/cerfandroid/DeviceStateStore;->RomKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    .line 571
    :cond_4
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 572
    invoke-static {v3}, Lcom/railty/cerfandroid/DeviceStateStore;->RomLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-static {p0, v1, v3}, Lcom/railty/cerfandroid/DeviceStateStore;->Find(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;

    move-result-object v1

    .line 573
    if-nez v1, :cond_5

    .line 574
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateSummary:Landroid/widget/TextView;

    const-string v1, "\uc774 NK.bin\uc758 \uc800\uc7a5 \uc0c1\ud0dc\uac00 \uc5c6\uc2b5\ub2c8\ub2e4. \uc885\ub8cc\ud560 \ub54c \uc800\uc7a5\uc744 \uc120\ud0dd\ud558\uba74 \uc5ec\uae30\uc5d0 \ubcf4\uad00\ub429\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 577
    :cond_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm"

    .line 578
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 579
    iget-wide v4, v1, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->sizeBytes:J

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 580
    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateSummary:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\uc800\uc7a5 \uc0c1\ud0dc \uc788\uc74c \u00b7 \uc2e4\ud589 \uc2dc \uc790\ub3d9 \ubcf5\uc6d0 \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->romLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v1, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->savedAt:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 581
    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateDeleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_2
    goto :goto_4

    .line 584
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 585
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateSummary:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uc774 NK.bin\uc758 \uc800\uc7a5 \uc0c1\ud0dc\ub97c \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->stateDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    :goto_4
    return-void

    .line 563
    :cond_6
    :goto_5
    return-void
.end method

.method private RequestAllFilesAccess()V
    .locals 3

    .line 1145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1146
    const-string v1, "\uc800\uc7a5\uc18c \uad8c\ud55c \ud544\uc694"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1147
    const-string v1, "\ub0b4\ubd80 \uc800\uc7a5\uc18c \ub8e8\ud2b8\uc5d0 CF \uc774\ubbf8\uc9c0\ub97c \ub9cc\ub4e4\uac70\ub098 \uc571 \ud3f4\ub354 \ubc16\uc758 \uacf5\uc720 \ud3f4\ub354\ub97c \uc0ac\uc6a9\ud558\ub824\uba74 \'\ubaa8\ub4e0 \ud30c\uc77c \uc811\uadfc\' \uad8c\ud55c\uc774 \ud544\uc694\ud569\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$23;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/LauncherActivity$23;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 1148
    const-string v2, "\uad8c\ud55c \uc124\uc815"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1155
    const-string v1, "\ucde8\uc18c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1157
    return-void
.end method

.method private RequestMissingPermissions()V
    .locals 7

    .line 1585
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "android.permission.CALL_PHONE"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "android.permission.ANSWER_PHONE_CALLS"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "android.permission.SEND_SMS"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "android.permission.RECEIVE_SMS"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "android.permission.READ_CONTACTS"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v1, v2

    .line 1596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, v1, v4

    .line 1598
    invoke-virtual {p0, v5}, Lcom/railty/cerfandroid/LauncherActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1600
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x5045

    invoke-virtual {p0, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1601
    :cond_2
    return-void
.end method

.method private ResolveDeviceScreenBounds()V
    .locals 13

    .line 615
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 616
    nop

    .line 617
    nop

    .line 618
    nop

    .line 619
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v7, v0, v2

    .line 620
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 621
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 622
    int-to-long v9, v8

    int-to-long v11, v7

    mul-long/2addr v9, v11

    .line 623
    cmp-long v11, v9, v5

    if-lez v11, :cond_0

    .line 624
    nop

    .line 625
    nop

    .line 626
    move v4, v7

    move v3, v8

    move-wide v5, v9

    .line 619
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    :cond_1
    if-lez v3, :cond_2

    if-lez v4, :cond_2

    .line 630
    iput v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    .line 631
    iput v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    .line 633
    :cond_2
    return-void
.end method

.method private Row()Landroid/widget/LinearLayout;
    .locals 2

    .line 1559
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1560
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1561
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1562
    return-object v0
.end method

.method private RunContainerTransfer(Landroid/net/Uri;Z)V
    .locals 7

    .line 1464
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1465
    if-eqz p2, :cond_0

    const-string v0, "\ucee8\ud14c\uc774\ub108\ub97c \ub0b4\ubcf4\ub0b4\ub294 \uc911..."

    goto :goto_0

    :cond_0
    const-string v0, "\ucee8\ud14c\uc774\ub108\ub97c \uac00\uc838\uc624\ub294 \uc911..."

    :goto_0
    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1466
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1467
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1468
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ActiveId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1469
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/railty/cerfandroid/LauncherActivity$32;

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/railty/cerfandroid/LauncherActivity$32;-><init>(Lcom/railty/cerfandroid/LauncherActivity;ZLjava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1514
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1515
    return-void
.end method

.method private SaveAndStart()V
    .locals 6

    .line 1090
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->StoreControls()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->CanUseShareFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->RequestAllFilesAccess()V

    .line 1093
    return-void

    .line 1096
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-virtual {v1, p0}, Lcom/railty/cerfandroid/DeviceSettings;->Save(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1100
    nop

    .line 1101
    iget-boolean v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->editingRunningEmulator:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1102
    const-string v0, "\uc124\uc815\uc744 \uc800\uc7a5\ud558\uace0 \uc2e4\ud589 \uc911 \uc5d0\ubbac\ub808\uc774\ud130\uc5d0 \uc801\uc6a9\ud569\ub2c8\ub2e4"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1103
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1104
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->setResult(I)V

    .line 1105
    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->finish()V

    .line 1106
    return-void

    .line 1108
    :cond_2
    nop

    .line 1110
    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/railty/cerfandroid/DeviceStateStore;->RomKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    .line 1111
    :cond_3
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v4, v4, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 1112
    invoke-static {v4}, Lcom/railty/cerfandroid/DeviceStateStore;->RomLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1111
    invoke-static {p0, v3, v4}, Lcom/railty/cerfandroid/DeviceStateStore;->Find(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;

    move-result-object v3

    .line 1113
    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->stateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 1117
    :cond_4
    goto :goto_1

    .line 1114
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 1115
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uc800\uc7a5 \uc0c1\ud0dc \ud655\uc778 \uc2e4\ud328. \uc800\uc7a5 \uc0c1\ud0dc \uc5c6\uc774 \uc2e4\ud589\ud569\ub2c8\ub2e4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1118
    :goto_1
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->MarkRun(Landroid/content/Context;)V

    .line 1119
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1120
    if-eqz v1, :cond_5

    .line 1121
    const-string v3, "com.railty.cerfandroid.RESTORE_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v1, "\uc120\ud0dd\ud55c NK.bin\uc758 \uc800\uc7a5 \uc0c1\ud0dc\ub97c \uc2e4\ud589 \uc2dc \ubcf5\uc6d0\ud569\ub2c8\ub2e4"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1123
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1125
    :cond_5
    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 1126
    return-void

    .line 1097
    :catch_2
    move-exception v1

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uc124\uc815 \uc800\uc7a5 \uc2e4\ud328: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1099
    return-void
.end method

.method private Section(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1541
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1542
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1544
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1545
    const/16 p1, 0x7d

    const/16 v1, 0x8b

    const/16 v2, 0x60

    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1546
    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result p1

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1547
    return-object v0
.end method

.method private SelectedBpp()I
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->bppSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1133
    :pswitch_0
    const/16 v0, 0x10

    return v0

    .line 1132
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1131
    :pswitch_2
    const/16 v0, 0x18

    return v0

    .line 1130
    :pswitch_3
    const/16 v0, 0x8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private ShowCreateCfImageDialog()V
    .locals 11

    .line 660
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->RequestAllFilesAccess()V

    .line 662
    const-string v0, "\uc800\uc7a5\uc18c \uc811\uadfc\uc744 \ud5c8\uc6a9\ud55c \ub4a4 CF \uc774\ubbf8\uc9c0 \ub9cc\ub4e4\uae30\ub97c \ub2e4\uc2dc \ub20c\ub7ec\uc8fc\uc138\uc694"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 664
    return-void

    .line 666
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 667
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 668
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 669
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 671
    const-string v3, "CF.IMG"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 672
    const-string v3, "\uc774\ubbf8\uc9c0 \ud30c\uc77c \uc774\ub984"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 673
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 674
    const-string v3, "\ub370\uc774\ud130 \uc6a9\ub7c9 (4 MiB\u201316 GiB, FAT16/FAT32 \uc790\ub3d9 \uc120\ud0dd)"

    invoke-direct {p0, v3}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 675
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 677
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 678
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 679
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 680
    const-string v7, "64"

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 681
    const-string v7, "\uc6a9\ub7c9"

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 682
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    invoke-direct {v7, v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    new-instance v7, Landroid/widget/Spinner;

    invoke-direct {v7, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 684
    new-instance v8, Landroid/widget/ArrayAdapter;

    new-array v6, v6, [Ljava/lang/String;

    const-string v10, "MiB"

    aput-object v10, v6, v5

    const-string v5, "GiB"

    aput-object v5, v6, v2

    const v2, 0x1090009

    invoke-direct {v8, p0, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 686
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x70

    invoke-direct {p0, v5}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v5

    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    const-string v3, "CF \uc774\ubbf8\uc9c0 \ub9cc\ub4e4\uae30"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 691
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/railty/cerfandroid/LauncherActivity$21;

    invoke-direct {v2, p0, v1, v4, v7}, Lcom/railty/cerfandroid/LauncherActivity$21;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 692
    const-string v1, "\ub9cc\ub4e4\uae30"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 735
    const-string v1, "\ucde8\uc18c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 737
    return-void
.end method

.method private SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 1

    .line 1566
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1567
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1568
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 1569
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1570
    return-object v0
.end method

.method private StoreControls()Z
    .locals 12

    .line 979
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    sget-object v1, Lcom/railty/cerfandroid/LauncherActivity;->THROTTLE_VALUES:[D

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity;->throttleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    .line 980
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    sget-object v1, Lcom/railty/cerfandroid/LauncherActivity;->CPU_RATE_VALUES:[D

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity;->cpuRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    .line 981
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->sizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 982
    const/16 v1, 0x1e0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput-boolean v3, v0, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    .line 984
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    const/16 v4, 0x280

    iput v4, v0, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    .line 985
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    goto/16 :goto_0

    .line 986
    :cond_0
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    if-lez v4, :cond_1

    .line 987
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput-boolean v2, v4, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    .line 988
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    aget-object v5, v5, v0

    aget v5, v5, v3

    iput v5, v4, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    .line 989
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    aget-object v0, v5, v0

    aget v0, v0, v2

    iput v0, v4, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    goto :goto_0

    .line 993
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->widthEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 994
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->heightEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 998
    nop

    .line 999
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0xa0

    if-lt v5, v6, :cond_16

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x78

    if-lt v5, v6, :cond_16

    .line 1000
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    if-gt v5, v6, :cond_16

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    if-le v5, v6, :cond_2

    goto/16 :goto_8

    .line 1006
    :cond_2
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->SelectedBpp()I

    move-result v5

    .line 1007
    int-to-long v6, v0

    int-to-long v8, v4

    mul-long/2addr v6, v8

    int-to-long v8, v5

    const-wide/16 v10, 0x7

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    mul-long/2addr v6, v8

    .line 1008
    const-wide/32 v8, 0x2000000

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 1009
    const-string v0, "\ud604\uc7ac \uc0c9 \uae4a\uc774\uc5d0\uc11c \ud504\ub808\uc784\ubc84\ud37c \ud55c\ub3c4(32 MiB)\ub97c \ucd08\uacfc\ud569\ub2c8\ub2e4"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1011
    return v3

    .line 1013
    :cond_3
    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput-boolean v2, v5, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    .line 1014
    iget-object v5, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput v0, v5, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    .line 1015
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput v4, v0, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    .line 1017
    :goto_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->SelectedBpp()I

    move-result v4

    iput v4, v0, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    .line 1018
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->dpiSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1019
    if-nez v0, :cond_4

    .line 1020
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput v3, v0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    goto :goto_1

    .line 1021
    :cond_4
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    .line 1023
    :try_start_1
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->dpiEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1027
    nop

    .line 1028
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    const/16 v4, 0x30

    if-lt v0, v4, :cond_5

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    if-le v0, v1, :cond_7

    .line 1029
    :cond_5
    const-string v0, "DPI\ub294 48\u2013480 \ubc94\uc704\ub85c \uc785\ub825\ud558\uc138\uc694"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1030
    return v3

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    const-string v0, "DPI\ub97c \uc22b\uc790\ub85c \uc785\ub825\ud558\uc138\uc694"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1026
    return v3

    .line 1033
    :cond_6
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 1034
    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    sub-int/2addr v0, v2

    aget v0, v1, v0

    iput v0, v4, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    .line 1036
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->orientationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    .line 1037
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-boolean v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-lez v1, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v3

    :goto_3
    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->phoneKeypad:Z

    .line 1038
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->qwertyKeypad:Z

    .line 1039
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->hideTaskbarCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->hideTaskbar:Z

    .line 1040
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->hideImeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->hideImeState:Z

    .line 1041
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->timeSyncCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->timeSync:Z

    .line 1042
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->clipboardCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    .line 1043
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cameraCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->cameraLink:Z

    .line 1044
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->nledCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->nledLink:Z

    .line 1045
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->touchInputSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_b

    move v1, v2

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_5
    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    .line 1046
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->glesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->glesEnabled:Z

    .line 1047
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->cellCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    .line 1048
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    .line 1049
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->extraDllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    .line 1051
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->gaNicCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->gaNicEnabled:Z

    .line 1052
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1053
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iget-object v0, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    .line 1055
    const-string v1, ".*[\\\\/:*?\"<>|].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1056
    :cond_c
    const-string v0, "\uacf5\uc720 \uc774\ub984\uc740 1~64\uc790\uc774\uba70 \ud30c\uc77c \uacbd\ub85c \ubb38\uc790\ub294 \uc0ac\uc6a9\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1057
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1058
    return v3

    .line 1061
    :cond_d
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1062
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    if-ne v0, v2, :cond_e

    const-string v0, "ne2000"

    goto :goto_6

    .line 1063
    :cond_e
    if-ne v0, v4, :cond_f

    const-string v0, "none"

    goto :goto_6

    :cond_f
    const/4 v4, 0x3

    if-ne v0, v4, :cond_10

    const-string v0, "cf"

    goto :goto_6

    .line 1064
    :cond_10
    const/4 v4, 0x4

    if-ne v0, v4, :cond_11

    const-string v0, "modem"

    goto :goto_6

    :cond_11
    const-string v0, "android_gnss"

    :goto_6
    iput-object v0, v1, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1066
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    const-string v1, ""

    iput-object v1, v0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 1067
    return v2

    .line 1069
    :cond_12
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1070
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_13

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1071
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DefaultShareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1072
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uacf5\uc720 \ud3f4\ub354\ub97c \ub9cc\ub4e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1075
    return v3

    .line 1077
    :cond_15
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput-object v0, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 1078
    return v2

    .line 1001
    :cond_16
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uc9e7\uc740 \ubcc0\uc740 120\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \uae34 \ubcc0\uc740 160\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \ubc94\uc704\uc5d0\uc11c \uc785\ub825\ud558\uc138\uc694"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1004
    return v3

    .line 995
    :catch_1
    move-exception v0

    .line 996
    const-string v0, "\ud574\uc0c1\ub3c4\ub97c \uc22b\uc790\ub85c \uc785\ub825\ud558\uc138\uc694"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 997
    return v3

    :array_0
    .array-data 4
        0x48
        0x60
        0x78
        0x90
        0xa0
        0xc0
        0xf0
        0x140
    .end array-data
.end method

.method private static TreeUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1250
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 1251
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1252
    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 1253
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1254
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1255
    const-string v0, "primary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1256
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private UpdateCfImageActions()V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageActions:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageActions:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 656
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 655
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    :cond_1
    return-void
.end method

.method private static WriteChs([BII)V
    .locals 4

    .line 949
    div-int/lit16 v0, p2, 0x3f0

    .line 950
    rem-int/lit16 p2, p2, 0x3f0

    .line 951
    div-int/lit8 v1, p2, 0x3f

    .line 952
    const/16 v2, 0x3f

    rem-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x1

    .line 953
    const/16 v3, 0x3ff

    if-le v0, v3, :cond_0

    .line 954
    nop

    .line 955
    nop

    .line 956
    const/16 v1, 0xf

    move p2, v2

    move v0, v3

    .line 958
    :cond_0
    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 959
    add-int/lit8 v1, p1, 0x1

    and-int/2addr p2, v2

    shr-int/lit8 v2, v0, 0x8

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, p0, v1

    .line 960
    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, v0

    aput-byte p2, p0, p1

    .line 961
    return-void
.end method

.method private static WriteFat32Table(Ljava/io/RandomAccessFile;JI[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 936
    invoke-virtual {p0, p4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 937
    const/high16 p1, 0x10000

    new-array p2, p1, [B

    .line 938
    add-int/lit8 p3, p3, -0x1

    int-to-long p3, p3

    const-wide/16 v0, 0x200

    mul-long/2addr p3, v0

    .line 939
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 940
    int-to-long v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 941
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 942
    int-to-long v0, v0

    sub-long/2addr p3, v0

    .line 943
    goto :goto_0

    .line 944
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->PickRom()V

    return-void
.end method

.method static synthetic access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->PickCfImage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->ShowCreateCfImageDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->PickShareFolder()V

    return-void
.end method

.method static synthetic access$1500(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->CreateExeShortcut()V

    return-void
.end method

.method static synthetic access$1600(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/Button;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->SaveAndStart()V

    return-void
.end method

.method static synthetic access$1900(Lcom/railty/cerfandroid/LauncherActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->cachedRomKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Refresh()V

    return-void
.end method

.method static synthetic access$2000(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->RefreshRomState()V

    return-void
.end method

.method static synthetic access$2100(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/railty/cerfandroid/LauncherActivity;->CreateCfImage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/LauncherActivity;->BuildBlankFat16Image(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$2300(Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/LauncherActivity;->BuildBlankFat32Image(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/Button;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->cfCreateButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->LoadControls()V

    return-void
.end method

.method static synthetic access$2600(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/railty/cerfandroid/LauncherActivity;->PinExeShortcut(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/railty/cerfandroid/LauncherActivity;->AskName(Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->ConfirmDeleteState()V

    return-void
.end method

.method static synthetic access$400(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/railty/cerfandroid/LauncherActivity;)[[I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizes:[[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/railty/cerfandroid/LauncherActivity;->dpiEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->UpdateCfImageActions()V

    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 1581
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/railty/cerfandroid/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1179
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1180
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1181
    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->CopyRom(Landroid/net/Uri;)V

    .line 1182
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/LauncherActivity;->CopyCfImage(Landroid/net/Uri;)V

    .line 1183
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/railty/cerfandroid/LauncherActivity;->RunContainerTransfer(Landroid/net/Uri;Z)V

    .line 1184
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->RunContainerTransfer(Landroid/net/Uri;Z)V

    .line 1185
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 1186
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->TreeUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1187
    if-nez p1, :cond_5

    .line 1188
    const-string p1, "\ub0b4\uc7a5 \uc800\uc7a5\uc18c\uc758 \ud3f4\ub354\ub9cc \uc120\ud0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1189
    return-void

    .line 1191
    :cond_5
    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    iput-object p1, p2, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 1192
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->Refresh()V

    .line 1194
    :cond_6
    return-void

    .line 1180
    :cond_7
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    .line 125
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->RequestMissingPermissions()V

    .line 127
    invoke-static {v0}, Lcom/railty/cerfandroid/DeviceSettings;->Load(Landroid/content/Context;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v1

    iput-object v1, v0, Lcom/railty/cerfandroid/LauncherActivity;->settings:Lcom/railty/cerfandroid/DeviceSettings;

    .line 128
    invoke-virtual {v0}, Lcom/railty/cerfandroid/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.railty.cerfandroid.EDIT_RUNNING"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/railty/cerfandroid/LauncherActivity;->editingRunningEmulator:Z

    .line 129
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->ResolveDeviceScreenBounds()V

    .line 130
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->BuildAvailableSizes()V

    .line 132
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 133
    const/16 v2, 0xf5

    const/16 v4, 0xf6

    const/16 v5, 0xf8

    invoke-static {v2, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 134
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    const/16 v8, 0x14

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v11

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v8

    invoke-virtual {v6, v9, v10, v11, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 139
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Lcom/railty/cerfandroid/LauncherActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x30

    invoke-direct {v0, v12}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v13

    invoke-direct {v0, v12}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v12

    invoke-direct {v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    const-string v11, "  CERF for Android"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    const/16 v11, 0x21

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-direct {v0, v6}, Lcom/railty/cerfandroid/LauncherActivity;->BuildContainerBar(Landroid/widget/LinearLayout;)V

    .line 155
    const-string v8, "\uc7a5\uce58"

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    const-string v8, "Device Emulator (ARMV4I)"

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-boolean v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->editingRunningEmulator:Z

    if-eqz v8, :cond_0

    .line 158
    const-string v8, "\uc2e4\ud589 \uc911 \uc989\uc2dc \uc801\uc6a9: PCMCIA \uce74\ub4dc/CF \uc774\ubbf8\uc9c0 \ud56b\uc2a4\uc651, \ud654\uba74 \ubc29\ud5a5\u00b7\ud06c\uae30\u00b7DPI, \ud130\uce58, \uc18d\ub3c4, \uacf5\uc720 \ud3f4\ub354. ROM\u00b7\uc0c9 \uae4a\uc774\ub294 \ub2e4\uc74c \ubd80\ud305\ubd80\ud130 \uc801\uc6a9\ub429\ub2c8\ub2e4. \uce74\ub4dc \ud56b\uc2a4\uc651 \uc2e0\ud638\ub97c \ubcf4\ub0b4\ub3c4 CE \ub4dc\ub77c\uc774\ubc84\uac00 \uc7a5\uce58\ub97c \ub2e4\uc2dc \uac80\uc0c9\ud558\uc9c0 \uc54a\uc73c\uba74 \uc7ac\ubd80\ud305\uc774 \ud544\uc694\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    :cond_0
    const-string v8, "ROM \uc774\ubbf8\uc9c0 (NK.bin)"

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    const-string v8, ""

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lcom/railty/cerfandroid/LauncherActivity;->romLabel:Landroid/widget/TextView;

    .line 165
    iget-object v10, v0, Lcom/railty/cerfandroid/LauncherActivity;->romLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v10

    .line 167
    new-instance v11, Lcom/railty/cerfandroid/LauncherActivity$1;

    invoke-direct {v11, v0}, Lcom/railty/cerfandroid/LauncherActivity$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v12, "\ud30c\uc77c \uc120\ud0dd"

    invoke-direct {v0, v12, v11}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    new-instance v11, Lcom/railty/cerfandroid/LauncherActivity$2;

    invoke-direct {v11, v0}, Lcom/railty/cerfandroid/LauncherActivity$2;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v12, "\uae30\ubcf8\uac12\uc73c\ub85c"

    invoke-direct {v0, v12, v11}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    const-string v10, "NK.bin \uc800\uc7a5 \uc0c1\ud0dc"

    invoke-direct {v0, v10}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->stateSummary:Landroid/widget/TextView;

    .line 182
    iget-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->stateSummary:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 184
    new-instance v10, Lcom/railty/cerfandroid/LauncherActivity$3;

    invoke-direct {v10, v0}, Lcom/railty/cerfandroid/LauncherActivity$3;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v11, "\uc800\uc7a5 \uc0c1\ud0dc \uc0ad\uc81c"

    invoke-direct {v0, v11, v10}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v10

    iput-object v10, v0, Lcom/railty/cerfandroid/LauncherActivity;->stateDeleteButton:Landroid/widget/Button;

    .line 187
    iget-object v10, v0, Lcom/railty/cerfandroid/LauncherActivity;->stateDeleteButton:Landroid/widget/Button;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    const-string v8, "\ud654\uba74 \ud574\uc0c1\ub3c4"

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    const-string v8, "\ud654\uba74 \ubc29\ud5a5"

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v8, Landroid/widget/Spinner;

    invoke-direct {v8, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->orientationSpinner:Landroid/widget/Spinner;

    .line 193
    iget-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->orientationSpinner:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    const-string v15, "\uac00\ub85c"

    aput-object v15, v14, v3

    move/from16 p1, v9

    const-string v9, "\uc138\ub85c"

    aput-object v9, v14, v7

    const v2, 0x1090009

    invoke-direct {v10, v0, v2, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 195
    iget-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->orientationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    const-string v8, "\ud558\ub2e8 \uc790\ud310 \ud615\uc2dd"

    invoke-direct {v0, v8}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->keypadLabel:Landroid/widget/TextView;

    .line 197
    iget-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->keypadLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v8, Landroid/widget/Spinner;

    invoke-direct {v8, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    .line 199
    iget-object v8, v0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/String;

    const-string v16, "\uc790\ud310 \uc5c6\uc74c"

    aput-object v16, v4, v3

    const-string v16, "\uc22b\uc790 \ud0a4\ud328\ub4dc"

    aput-object v16, v4, v7

    const-string v16, "\ucffc\ud2f0 \uc790\ud310 (\ube14\ub799\uc7ad \uc2a4\ud0c0\uc77c)"

    aput-object v16, v4, v11

    invoke-direct {v10, v0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 201
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->keypadSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->orientationSpinner:Landroid/widget/Spinner;

    new-instance v8, Lcom/railty/cerfandroid/LauncherActivity$4;

    invoke-direct {v8, v0}, Lcom/railty/cerfandroid/LauncherActivity$4;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 210
    const-string v4, "WM \ud654\uba74 \ud45c\uc2dc"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->hideTaskbarCheck:Landroid/widget/CheckBox;

    .line 212
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->hideTaskbarCheck:Landroid/widget/CheckBox;

    const-string v8, "\uc791\uc5c5 \ud45c\uc2dc\uc904 \uc228\uae30\uae30 (WM \uc0c1\ub2e8 / CE \ud558\ub2e8)"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->hideTaskbarCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->hideImeCheck:Landroid/widget/CheckBox;

    .line 215
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->hideImeCheck:Landroid/widget/CheckBox;

    const-string v8, "\uc785\ub825\uae30 \uc0c1\ud0dc \ucc3d(A/\u6f22) \uc228\uae30\uae30"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->hideImeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    const-string v4, "\ud3f0 \uc5f0\ub3d9 \ud3b8\uc758 \uae30\ub2a5"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->timeSyncCheck:Landroid/widget/CheckBox;

    .line 219
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->timeSyncCheck:Landroid/widget/CheckBox;

    const-string v8, "\ud3f0 \uc2dc\uac04\u00b7\uc2dc\uac04\ub300 \uc790\ub3d9 \ub3d9\uae30\ud654"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->timeSyncCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->clipboardCheck:Landroid/widget/CheckBox;

    .line 222
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->clipboardCheck:Landroid/widget/CheckBox;

    const-string v8, "\ud3f0 \u2194 WM \ud074\ub9bd\ubcf4\ub4dc \uacf5\uc720"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->clipboardCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cameraCheck:Landroid/widget/CheckBox;

    .line 225
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cameraCheck:Landroid/widget/CheckBox;

    const-string v8, "\ud3f0 \uce74\uba54\ub77c\ub97c WM \uce74\uba54\ub77c\ub85c \uc0ac\uc6a9"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cameraCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->nledCheck:Landroid/widget/CheckBox;

    .line 228
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->nledCheck:Landroid/widget/CheckBox;

    const-string v8, "WM \uc9c4\ub3d9\u00b7\uc54c\ub9bc LED\ub97c \ud3f0\uc73c\ub85c \uc804\ub2ec"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->nledCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    const-string v4, "\ud130\uce58 \uc785\ub825 \ubc29\uc2dd"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    const-string v4, "\ub9c8\uc6b0\uc2a4\ub294 Guest Additions \ud3ec\uc778\ud130, \ud130\uce58\ud328\ub110\uc740 \ubcf4\ub4dc\uc758 S3C2410 \ud39c \uc785\ub825\uc744 \uc0ac\uc6a9\ud569\ub2c8\ub2e4."

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->touchInputSpinner:Landroid/widget/Spinner;

    .line 234
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->touchInputSpinner:Landroid/widget/Spinner;

    new-instance v8, Landroid/widget/ArrayAdapter;

    new-array v10, v11, [Ljava/lang/String;

    const-string v16, "\ub9c8\uc6b0\uc2a4"

    aput-object v16, v10, v3

    const-string v16, "\ud130\uce58\ud328\ub110"

    aput-object v16, v10, v7

    invoke-direct {v8, v0, v2, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 236
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->touchInputSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const-string v4, "3D \uadf8\ub798\ud53d"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->glesCheck:Landroid/widget/CheckBox;

    .line 240
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->glesCheck:Landroid/widget/CheckBox;

    const-string v8, "OpenGL ES 1.1 \ud65c\uc131\ud654"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->glesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    const-string v4, "OpenGL ES 1.1 3D \uc9c0\uc6d0\uc744 \ud65c\uc131\ud654\ud569\ub2c8\ub2e4. (\ud604\uc7ac \ud14c\uc2a4\ud2b8 \uc911\uc778 \uae30\ub2a5\uc774\uba70 \ub3d9\uc791\uc5d0 \uc774\uc0c1\uc774 \uc0dd\uae38 \uc218 \uc788\uc2b5\ub2c8\ub2e4.)"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    const-string v4, "\uc804\ud654 \uc5f0\ub3d9"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cellCheck:Landroid/widget/CheckBox;

    .line 247
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cellCheck:Landroid/widget/CheckBox;

    const-string v8, "\uc2a4\ub9c8\ud2b8\ud3f0 \uc804\ud654 \uc5f0\ub3d9 (WM \uc804\ud654 \uae30\ub2a5)"

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cellCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    .line 250
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 251
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    const-string v8, "WM \ud1b5\uc2e0\uc0ac \uc774\ub984 (\ube44\uc6b0\uba74 \uc2a4\ub9c8\ud2b8\ud3f0 \ud1b5\uc2e0\uc0ac \uc774\ub984 \uc0ac\uc6a9)"

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    const v8, 0x80001

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 253
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->operatorEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 255
    const-string v10, "\uae30\ubcf8 \uc804\ud654 \uc571\uc73c\ub85c \uc9c0\uc815"

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v10, Lcom/railty/cerfandroid/LauncherActivity$5;

    invoke-direct {v10, v0}, Lcom/railty/cerfandroid/LauncherActivity$5;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 269
    const-string v10, "RCS \ucc44\ud305 \ubb38\uc790 \ubc1b\uae30 (\uc54c\ub9bc \uc811\uadfc \ud5c8\uc6a9)"

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    new-instance v10, Lcom/railty/cerfandroid/LauncherActivity$6;

    invoke-direct {v10, v0}, Lcom/railty/cerfandroid/LauncherActivity$6;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    const-string v4, "\ucd94\uac00 DLL"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->extraDllCheck:Landroid/widget/CheckBox;

    .line 281
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->extraDllCheck:Landroid/widget/CheckBox;

    const-string v10, "\ucd94\uac00 \ud655\uc7a5 DLL \uc8fc\uc785"

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->extraDllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    const-string v4, "\ud504\ub85c\uadf8\ub7a8 \uad6c\ub3d9\uc5d0 \ud544\uc694\ud55c \ud544\uc218 DLL\ub4e4\uc744 \uc8fc\uc785\ud569\ub2c8\ub2e4."

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    const-string v4, "\ub124\ud2b8\uc6cc\ud06c"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->gaNicCheck:Landroid/widget/CheckBox;

    .line 287
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->gaNicCheck:Landroid/widget/CheckBox;

    const-string v10, "CERF \uac8c\uc2a4\ud2b8 \ud655\uc7a5 \ub79c\uce74\ub4dc \uc0ac\uc6a9"

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->gaNicCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    const-string v4, "\ub044\uba74 WM/CE\uc5d0\uc11c CERF Guest Additions Ethernet \uc5b4\ub311\ud130\uac00 \uc124\uce58\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. NE2000 CF \uce74\ub4dc\ub098 GPRS\ub9cc \uc4f8 \ub54c \ub044\uc2ed\uc2dc\uc624."

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    const-string v4, "\uc7a5\uce58 \uc774\ub984 (OEM \uc815\ubcf4)"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    .line 294
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 295
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    const-string v10, "\ube44\uc6b0\uba74 Microsoft DeviceEmulator"

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    new-array v10, v7, [Landroid/text/InputFilter;

    move/from16 v16, v11

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    move/from16 v17, v14

    const/16 v14, 0x18

    invoke-direct {v11, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v10, v3

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 297
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 298
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->oemEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    const-string v4, "\ud504\ub85c\uadf8\ub7a8\uc774 \uc77d\ub294 \uae30\uae30 \uc815\ubcf4(SPI_GETOEMINFO)\ub97c \ubc14\uafc9\ub2c8\ub2e4. \ucd5c\ub300 24\uc790\uc774\uba70, \uccab \ub2e8\uc5b4(\ucd5c\ub300 9\uc790)\ub294 \uc81c\uc870\uc0ac\ub85c\ub3c4 \uc4f0\uc785\ub2c8\ub2e4. \uc608: SAMSUNG SCH-M430, hp iPAQ h2200"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    const-string v4, "\uc18d\ub3c4 \uc81c\ud55c \ubc30\uc728"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    const-string v4, "\uac8c\uc2a4\ud2b8 \uc2e4\ud589 \uc18d\ub3c4\ub97c \uc81c\ud55c\ud569\ub2c8\ub2e4. 2\ub294 \uc808\ubc18 \uc18d\ub3c4, 0\uc740 \uc81c\ud55c \uc5c6\uc74c."

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->throttleSpinner:Landroid/widget/Spinner;

    .line 305
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->throttleSpinner:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    const/16 v11, 0x11

    new-array v11, v11, [Ljava/lang/String;

    const-string v18, "\uc81c\ud55c \uc5c6\uc74c (0)"

    aput-object v18, v11, v3

    const-string v18, "0.1"

    aput-object v18, v11, v7

    const-string v18, "0.2"

    aput-object v18, v11, v16

    const-string v18, "0.3"

    aput-object v18, v11, v17

    const-string v18, "0.4"

    const/4 v5, 0x4

    aput-object v18, v11, v5

    const-string v18, "0.5"

    const/4 v14, 0x5

    aput-object v18, v11, v14

    const/16 v18, 0x6

    const-string v19, "0.6"

    aput-object v19, v11, v18

    const/16 v18, 0x7

    const-string v19, "0.7"

    aput-object v19, v11, v18

    const/16 v18, 0x8

    const-string v19, "0.8"

    aput-object v19, v11, v18

    const/16 v18, 0x9

    const-string v19, "0.9"

    aput-object v19, v11, v18

    const/16 v18, 0xa

    const-string v19, "\uc790\ub3d9 (1)"

    aput-object v19, v11, v18

    const/16 v18, 0xb

    const-string v19, "1.5"

    aput-object v19, v11, v18

    const/16 v18, 0xc

    const-string v19, "2"

    aput-object v19, v11, v18

    const/16 v18, 0xd

    const-string v19, "3"

    aput-object v19, v11, v18

    const/16 v18, 0xe

    const-string v19, "4"

    aput-object v19, v11, v18

    const/16 v18, 0xf

    const-string v19, "5"

    aput-object v19, v11, v18

    const-string v18, "10"

    aput-object v18, v11, p1

    invoke-direct {v10, v0, v2, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 307
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->throttleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    const-string v4, "CPU \uc18d\ub3c4 \ubc30\uc728"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    const-string v4, "\uac8c\uc2a4\ud2b8 CPU \ud074\ub7ed \ubc30\uc728\uc785\ub2c8\ub2e4. \uac12\uc774 \ub192\uc73c\uba74 \uc791\uc5c5\ub7c9\uc774 \ub298\uba70 \ub3d9\uc791\uc5d0 \uc601\ud5a5\uc744 \uc904 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cpuRateSpinner:Landroid/widget/Spinner;

    .line 312
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cpuRateSpinner:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    sget-object v11, Lcom/railty/cerfandroid/LauncherActivity;->SPEED_LABELS:[Ljava/lang/String;

    invoke-direct {v10, v0, v2, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 314
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cpuRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->sizeSpinner:Landroid/widget/Spinner;

    .line 316
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->sizeSpinner:Landroid/widget/Spinner;

    new-instance v10, Landroid/widget/ArrayAdapter;

    iget-object v11, v0, Lcom/railty/cerfandroid/LauncherActivity;->availableSizeLabels:[Ljava/lang/String;

    invoke-direct {v10, v0, v2, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 318
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->sizeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\uae30\uae30 \uc9c0\uc6d0 \ucd5c\ub300 \ud574\uc0c1\ub3c4: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenWidth:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " x "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v0, Lcom/railty/cerfandroid/LauncherActivity;->maxScreenHeight:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    .line 321
    invoke-direct {v0, v15}, Lcom/railty/cerfandroid/LauncherActivity;->NumberEdit(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->widthEdit:Landroid/widget/EditText;

    .line 322
    invoke-direct {v0, v9}, Lcom/railty/cerfandroid/LauncherActivity;->NumberEdit(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->heightEdit:Landroid/widget/EditText;

    .line 323
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/railty/cerfandroid/LauncherActivity;->widthEdit:Landroid/widget/EditText;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v3, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const-string v4, " x "

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .line 325
    iget-object v9, v0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/railty/cerfandroid/LauncherActivity;->heightEdit:Landroid/widget/EditText;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->customRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->sizeSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/railty/cerfandroid/LauncherActivity$7;

    invoke-direct {v9, v0}, Lcom/railty/cerfandroid/LauncherActivity$7;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 338
    const-string v4, "\uc0c9 \uae4a\uc774"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->bppSpinner:Landroid/widget/Spinner;

    .line 340
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->bppSpinner:Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/ArrayAdapter;

    new-array v10, v5, [Ljava/lang/String;

    const-string v15, "8\ube44\ud2b8"

    aput-object v15, v10, v3

    const-string v15, "16\ube44\ud2b8"

    aput-object v15, v10, v7

    const-string v15, "24\ube44\ud2b8"

    aput-object v15, v10, v16

    const-string v15, "32\ube44\ud2b8"

    aput-object v15, v10, v17

    invoke-direct {v9, v0, v2, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 342
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->bppSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    const-string v4, "Windows CE \ud654\uba74 DPI"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->dpiSpinner:Landroid/widget/Spinner;

    .line 346
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->dpiSpinner:Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/ArrayAdapter;

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const-string v15, "ROM \uae30\ubcf8\uac12"

    aput-object v15, v10, v3

    const-string v15, "72 DPI"

    aput-object v15, v10, v7

    const-string v15, "96 DPI"

    aput-object v15, v10, v16

    const-string v15, "120 DPI"

    aput-object v15, v10, v17

    const-string v15, "144 DPI"

    aput-object v15, v10, v5

    const-string v15, "160 DPI"

    aput-object v15, v10, v14

    const/4 v15, 0x6

    const-string v18, "192 DPI"

    aput-object v18, v10, v15

    const/4 v15, 0x7

    const-string v18, "240 DPI"

    aput-object v18, v10, v15

    const/16 v15, 0x8

    const-string v18, "320 DPI"

    aput-object v18, v10, v15

    const/16 v15, 0x9

    const-string v18, "\uc9c1\uc811 \uc785\ub825"

    aput-object v18, v10, v15

    invoke-direct {v9, v0, v2, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 349
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->dpiSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    const-string v4, "DPI (48\u2013480)"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->NumberEdit(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->dpiEdit:Landroid/widget/EditText;

    .line 351
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->dpiEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->dpiSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/railty/cerfandroid/LauncherActivity$8;

    invoke-direct {v9, v0}, Lcom/railty/cerfandroid/LauncherActivity$8;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 359
    const-string v4, "\ubd80\ud305 \uc2dc PCMCIA \uce74\ub4dc"

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    .line 361
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    new-instance v9, Landroid/widget/ArrayAdapter;

    new-array v10, v14, [Ljava/lang/String;

    const-string v14, "Android GNSS (COM2)"

    aput-object v14, v10, v3

    const-string v14, "NE2000 Ethernet (NAT \uc778\ud130\ub137)"

    aput-object v14, v10, v7

    const-string v14, "\uc5c6\uc74c (\ube48 \uc2ac\ub86f)"

    aput-object v14, v10, v16

    const-string v14, "CompactFlash \uc774\ubbf8\uc9c0"

    aput-object v14, v10, v17

    const-string v14, "\uac00\uc0c1 \ubaa8\ub380 (NAT \uc778\ud130\ub137)"

    aput-object v14, v10, v5

    invoke-direct {v9, v0, v2, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 363
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->pcmciaSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$9;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$9;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 370
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageActions:Landroid/widget/LinearLayout;

    .line 371
    new-instance v2, Lcom/railty/cerfandroid/LauncherActivity$10;

    invoke-direct {v2, v0}, Lcom/railty/cerfandroid/LauncherActivity$10;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v4, "CF \uc774\ubbf8\uc9c0 \uc120\ud0dd"

    invoke-direct {v0, v4, v2}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageButton:Landroid/widget/Button;

    .line 374
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageActions:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v2, Lcom/railty/cerfandroid/LauncherActivity$11;

    invoke-direct {v2, v0}, Lcom/railty/cerfandroid/LauncherActivity$11;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v4, "\uc0c8 CF \uc774\ubbf8\uc9c0 \ub9cc\ub4e4\uae30"

    invoke-direct {v0, v4, v2}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfCreateButton:Landroid/widget/Button;

    .line 378
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageActions:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfCreateButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->cfImageActions:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    const-string v2, "\uacf5\uc720 \ud3f4\ub354"

    invoke-direct {v0, v2}, Lcom/railty/cerfandroid/LauncherActivity;->Section(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    .line 383
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    const-string v4, "CE\uc5d0\uc11c \uacf5\uc720 \ud3f4\ub354 \uc0ac\uc6a9"

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    .line 386
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 387
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    const-string v4, "CE\uc5d0\uc11c \ubcf4\uc77c \uacf5\uc720 \uc774\ub984"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 389
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 391
    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$12;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$12;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v5, "\uc774\ub984 \uae30\ubcf8\uac12\uc73c\ub85c"

    invoke-direct {v0, v5, v4}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareNameEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$13;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$13;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 404
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    .line 405
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 406
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    const-string v4, "/storage/emulated/0/\ud3f4\ub354"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    const v4, 0x80011

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 409
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareLabel:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 411
    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$14;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$14;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v5, "\ud3f4\ub354 \uc120\ud0dd"

    invoke-direct {v0, v5, v4}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareButton:Landroid/widget/Button;

    .line 415
    iget-object v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$15;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$15;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v5, "\uae30\ubcf8 \ud3f4\ub354"

    invoke-direct {v0, v5, v4}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    iget-boolean v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->editingRunningEmulator:Z

    if-nez v2, :cond_1

    .line 427
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Row()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 428
    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$16;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$16;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    const-string v5, "\ubc14\ud0d5\ud654\uba74 \ubc14\ub85c\uac00\uae30 \ub9cc\ub4e4\uae30"

    invoke-direct {v0, v5, v4}, Lcom/railty/cerfandroid/LauncherActivity;->SmallButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    const-string v2, "\uacf5\uc720 \ud3f4\ub354\uc758 EXE\ub97c \uace8\ub77c Android \ud648 \ud654\uba74\uc5d0 \ubc14\ub85c\uac00\uae30\ub97c \ub9cc\ub4ed\ub2c8\ub2e4. \ubc14\ub85c\uac00\uae30\ub97c \ub204\ub974\uba74 \uc774 \ucee8\ud14c\uc774\ub108\uac00 \uc0c8\ub85c \ubd80\ud305\ub418\uace0 \uadf8 \ud504\ub85c\uadf8\ub7a8\uc774 \uc790\ub3d9 \uc2e4\ud589\ub429\ub2c8\ub2e4."

    invoke-direct {v0, v2}, Lcom/railty/cerfandroid/LauncherActivity;->Body(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_1
    iget-object v2, v0, Lcom/railty/cerfandroid/LauncherActivity;->shareCheck:Landroid/widget/CheckBox;

    new-instance v4, Lcom/railty/cerfandroid/LauncherActivity$17;

    invoke-direct {v4, v0}, Lcom/railty/cerfandroid/LauncherActivity$17;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 445
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 446
    iget-boolean v4, v0, Lcom/railty/cerfandroid/LauncherActivity;->editingRunningEmulator:Z

    if-eqz v4, :cond_2

    const-string v4, "\uc801\uc6a9"

    goto :goto_0

    :cond_2
    const-string v4, "\uc2e4\ud589"

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 448
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 449
    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$18;

    invoke-direct {v3, v0}, Lcom/railty/cerfandroid/LauncherActivity$18;-><init>(Lcom/railty/cerfandroid/LauncherActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x38

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v12, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    const/16 v4, 0x18

    invoke-direct {v0, v4}, Lcom/railty/cerfandroid/LauncherActivity;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 455
    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 458
    const/16 v3, 0xf5

    const/16 v4, 0xf6

    const/16 v5, 0xf8

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 459
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$19;

    invoke-direct {v3, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity$19;-><init>(Lcom/railty/cerfandroid/LauncherActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 491
    invoke-virtual {v0, v2}, Lcom/railty/cerfandroid/LauncherActivity;->setContentView(Landroid/view/View;)V

    .line 492
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->LoadControls()V

    .line 493
    invoke-direct {v0}, Lcom/railty/cerfandroid/LauncherActivity;->Refresh()V

    .line 494
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 499
    invoke-direct {p0}, Lcom/railty/cerfandroid/LauncherActivity;->RefreshRomState()V

    .line 500
    return-void
.end method

.class public final Lcom/railty/cerfandroid/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;
    }
.end annotation


# static fields
.field static final EXTRA_AUTORUN:Ljava/lang/String; = "com.railty.cerfandroid.AUTORUN"

.field private static final EXTRA_EDIT_RUNNING:Ljava/lang/String; = "com.railty.cerfandroid.EDIT_RUNNING"

.field private static final EXTRA_RESTORE_STATE:Ljava/lang/String; = "com.railty.cerfandroid.RESTORE_STATE"

.field private static final M_ABOUT:I = 0x15

.field private static final M_ARTICLES:I = 0x14

.field private static final M_BATTERY_100:I = 0x10

.field private static final M_BATTERY_20:I = 0x16

.field private static final M_BATTERY_40:I = 0x13

.field private static final M_BATTERY_5:I = 0x17

.field private static final M_BATTERY_60:I = 0x12

.field private static final M_BATTERY_80:I = 0x11

.field private static final M_BATTERY_LINK:I = 0x18

.field private static final M_BATTERY_POWER:I = 0xf

.field private static final M_GPS:I = 0xe

.field private static final M_HARD_RESET:I = 0x2

.field private static final M_QUIT:I = 0x4

.field private static final M_SCREENSHOT:I = 0xd

.field private static final M_SETTINGS:I = 0x3

.field private static final M_SOFT_RESET:I = 0x1

.field private static final M_VIEW_ASPECT:I = 0xa

.field private static final M_VIEW_INTEGER:I = 0xc

.field private static final M_VIEW_STRETCH:I = 0xb

.field private static final REQUEST_EDIT_SETTINGS:I = 0x29

.field private static final VIEW_ASPECT:I = 0x0

.field private static final VIEW_INTEGER:I = 0x2

.field private static final VIEW_STRETCH:I = 0x1


# instance fields
.field private activeRomPath:Ljava/lang/String;

.field private autorunCommand:Ljava/lang/String;

.field private batteryLinked:Z

.field private batteryOnBattery:Z

.field private batteryPercent:I

.field private final batteryReceiver:Landroid/content/BroadcastReceiver;

.field private bootLogLines:I

.field private bootLogMaximumUntil:J

.field private final bootLogPoller:Ljava/lang/Runnable;

.field private bootLogView:Landroid/widget/TextView;

.field private bootLogVisibleUntil:J

.field private camera:Lcom/railty/cerfandroid/CameraBridge;

.field private cameraLink:Z

.field private final cameraPoll:Ljava/lang/Runnable;

.field private cell:Lcom/railty/cerfandroid/CellBridge;

.field private clipboard:Landroid/content/ClipboardManager;

.field private clipboardLast:Ljava/lang/String;

.field private final clipboardPoll:Ljava/lang/Runnable;

.field private emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

.field private gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

.field private gpsCardSelected:Z

.field private guestHeight:I

.field private guestWidth:I

.field private final hardwareKeys:Lcom/railty/cerfandroid/HardwareKeys;

.field private lastBootLog:Ljava/lang/String;

.field private ledDot:Landroid/view/View;

.field private final mainHandler:Landroid/os/Handler;

.field private nledLink:Z

.field private final nledPoll:Ljava/lang/Runnable;

.field private nledTick:I

.field private portraitBootLog:Z

.field private restoreStatePath:Ljava/lang/String;

.field private sleepNotice:Landroid/widget/TextView;

.field private softResetBlackScreen:Z

.field private softResetBootLog:Z

.field private final stateExecutor:Ljava/util/concurrent/ExecutorService;

.field private stateOperationBusy:Z

.field private vibrating:Z

.field private vibrator:Landroid/os/Vibrator;

.field private viewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "cerf_android_frontend"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->autorunCommand:Ljava/lang/String;

    .line 35
    const/16 v1, 0x320

    iput v1, p0, Lcom/railty/cerfandroid/MainActivity;->guestWidth:I

    .line 36
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/railty/cerfandroid/MainActivity;->guestHeight:I

    .line 37
    const/16 v1, 0x30

    iput v1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogLines:I

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    .line 50
    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->activeRomPath:Ljava/lang/String;

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->stateExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->restoreStatePath:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->lastBootLog:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/railty/cerfandroid/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/MainActivity$1;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogPoller:Ljava/lang/Runnable;

    .line 463
    const/16 v0, 0x64

    iput v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    .line 465
    new-instance v0, Lcom/railty/cerfandroid/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/MainActivity$9;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 944
    new-instance v0, Lcom/railty/cerfandroid/MainActivity$17;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/MainActivity$17;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->clipboardPoll:Ljava/lang/Runnable;

    .line 984
    new-instance v0, Lcom/railty/cerfandroid/HardwareKeys;

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$19;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/MainActivity$19;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-direct {v0, v1}, Lcom/railty/cerfandroid/HardwareKeys;-><init>(Lcom/railty/cerfandroid/HardwareKeys$Sink;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->hardwareKeys:Lcom/railty/cerfandroid/HardwareKeys;

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->cameraLink:Z

    .line 1007
    iput-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->nledLink:Z

    .line 1008
    new-instance v0, Lcom/railty/cerfandroid/MainActivity$20;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/MainActivity$20;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->cameraPoll:Ljava/lang/Runnable;

    .line 1034
    new-instance v0, Lcom/railty/cerfandroid/MainActivity$21;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/MainActivity$21;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->nledPoll:Ljava/lang/Runnable;

    return-void
.end method

.method private ApplyPhoneBattery(Landroid/content/Intent;)V
    .locals 5

    .line 474
    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 476
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 477
    const-string v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 478
    if-ltz v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    .line 480
    if-nez p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    .line 481
    iget p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetBatteryState(IZ)V

    .line 482
    return-void

    .line 478
    :cond_3
    :goto_0
    return-void
.end method

.method private ExitEmulator()V
    .locals 5

    .line 635
    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->stateOperationBusy:Z

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 637
    const-string v1, "\ud604\uc7ac NK.bin \uc800\uc7a5 \uc0c1\ud0dc\ub85c \uc800\uc7a5 (\uae30\uc874 \uc800\uc7a5 \uc0c1\ud0dc \ub36e\uc5b4\uc4f0\uae30)"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 638
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 639
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 640
    const-string v2, "\uc5d0\ubbac\ub808\uc774\ud130 \uc885\ub8cc"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 641
    const-string v2, "\ud604\uc7ac \uc0c1\ud0dc\ub97c \uc800\uc7a5\ud560\uae4c\uc694?\n\uc800\uc7a5 \uc0c1\ud0dc\ub294 \uc0ac\uc6a9 \uc911\uc778 NK.bin\ubcc4\ub85c \uad00\ub9ac\ub429\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 642
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/railty/cerfandroid/MainActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/railty/cerfandroid/MainActivity$12;-><init>(Lcom/railty/cerfandroid/MainActivity;Landroid/widget/CheckBox;)V

    .line 643
    const-string v0, "\uc885\ub8cc"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 649
    const-string v1, "\ucde8\uc18c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 651
    return-void
.end method

.method private FinishEmulatorProcess()V
    .locals 4

    .line 703
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->finish()V

    .line 704
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$14;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/MainActivity$14;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 708
    return-void
.end method

.method private FitPortraitBootLogToScreen()V
    .locals 9

    .line 346
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    nop

    .line 349
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    .line 351
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 352
    const v3, 0x3f6147ae    # 0.88f

    mul-float/2addr v3, v0

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 353
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v6

    int-to-float v6, v6

    .line 354
    const/16 v7, 0x12

    invoke-direct {p0, v7}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v7

    int-to-float v7, v7

    .line 355
    const v8, 0x3f47ae14    # 0.78f

    mul-float/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 356
    iget-object v6, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 357
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 358
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v1

    .line 359
    const/4 v1, 0x0

    if-le v4, v2, :cond_3

    .line 360
    mul-float/2addr v5, v3

    sub-float/2addr v0, v5

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_3
    nop

    .line 361
    :goto_1
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 362
    return-void

    .line 346
    :cond_4
    :goto_2
    return-void
.end method

.method private HandleCorners(Z)[F
    .locals 11

    .line 498
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 499
    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    new-array p1, v9, [F

    aput v1, p1, v8

    aput v1, p1, v7

    aput v10, p1, v6

    aput v10, p1, v5

    aput v10, p1, v4

    aput v10, p1, v3

    aput v1, p1, v0

    aput v1, p1, v2

    goto :goto_0

    .line 500
    :cond_0
    new-array p1, v9, [F

    aput v10, p1, v8

    aput v10, p1, v7

    aput v1, p1, v6

    aput v1, p1, v5

    aput v1, p1, v4

    aput v1, p1, v3

    aput v10, p1, v0

    aput v10, p1, v2

    .line 499
    :goto_0
    return-object p1
.end method

.method private HideSystemBars()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 373
    return-void
.end method

.method private OnMenu(I)Z
    .locals 4

    .line 556
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 630
    :pswitch_0
    return v1

    .line 558
    :pswitch_1
    iget-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->SetBatteryLinked(Z)V

    .line 559
    return v2

    .line 623
    :pswitch_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    const-string v1, "\uc815\ubcf4"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 625
    const-string v1, "CERF - CE Runtime Foundation\nAndroid\uc6a9 Device Emulator \ud3ec\ud2b8\n\nhttps://cerf.cx"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 626
    const-string v1, "\ud655\uc778"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 628
    return v2

    .line 619
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    .line 620
    const-string v0, "https://cerf.cx/articles/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 619
    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 621
    return v2

    .line 570
    :pswitch_4
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    const/16 p1, 0x50

    goto :goto_0

    .line 571
    :cond_1
    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    const/16 p1, 0x3c

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    if-ne p1, v0, :cond_3

    const/16 p1, 0x28

    goto :goto_0

    .line 572
    :cond_3
    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    const/16 p1, 0x14

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    :goto_0
    iput p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    .line 573
    iget p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetBatteryState(IZ)V

    .line 574
    return v2

    .line 561
    :pswitch_5
    iget-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    .line 562
    iget p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetBatteryState(IZ)V

    .line 563
    return v2

    .line 576
    :pswitch_6
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->ShowStatus()V

    .line 577
    return v2

    .line 616
    :pswitch_7
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->SaveScreenshot()V

    .line 617
    return v2

    .line 610
    :pswitch_8
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    move p1, v2

    goto :goto_1

    .line 611
    :cond_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_6
    move p1, v1

    :goto_1
    iput p1, p0, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    .line 612
    invoke-virtual {p0, v1}, Lcom/railty/cerfandroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "view_mode"

    iget v1, p0, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 613
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->requestLayout()V

    .line 614
    return v2

    .line 605
    :pswitch_9
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->ExitEmulator()V

    .line 606
    return v2

    .line 599
    :pswitch_a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    const-string v0, "com.railty.cerfandroid.EDIT_RUNNING"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const/16 v0, 0x29

    invoke-virtual {p0, p1, v0}, Lcom/railty/cerfandroid/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 603
    return v2

    .line 583
    :pswitch_b
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    const-string v1, "\ud558\ub4dc \ub9ac\uc14b - CE Runtime Foundation"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 585
    const-string v1, "\ud558\ub4dc \ub9ac\uc14b\uc740 \uac8c\uc2a4\ud2b8 \uba54\ubaa8\ub9ac\ub97c \ubaa8\ub450 \uc9c0\uc6c1\ub2c8\ub2e4.\n\uc800\uc7a5\ud558\uc9c0 \uc54a\uc740 \uac8c\uc2a4\ud2b8 \ub370\uc774\ud130\uc640 \uac1c\uccb4 \uc800\uc7a5\uc18c\uac00 \uc0ac\ub77c\uc9d1\ub2c8\ub2e4.\n\n\uacc4\uc18d\ud560\uae4c\uc694?"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/MainActivity$11;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    .line 586
    const-string v3, "\uacc4\uc18d"

    invoke-virtual {p1, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 595
    const-string v1, "\ucde8\uc18c"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 596
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 597
    return v2

    .line 579
    :pswitch_c
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->ShowBlackScreenForSoftReset()V

    .line 580
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeSoftReset()V

    .line 581
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static OperatorNameBytes(Ljava/lang/String;)[B
    .locals 11

    .line 906
    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    .line 907
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "x-windows-949"

    aput-object v3, v2, v0

    const-string v3, "MS949"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "windows-949"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v6, "EUC-KR"

    aput-object v6, v2, v3

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v6, v2, v3

    .line 909
    :try_start_0
    invoke-static {v6}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_4

    .line 910
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 911
    array-length v7, v6

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_2

    return-object v6

    .line 912
    :cond_2
    nop

    .line 913
    move v7, v0

    move v9, v7

    :goto_1
    array-length v10, v6

    if-ge v7, v10, :cond_5

    if-ge v7, v8, :cond_5

    .line 914
    aget-byte v10, v6, v7

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_3

    move v10, v5

    goto :goto_2

    :cond_3
    move v10, v4

    .line 915
    :goto_2
    add-int/2addr v7, v10

    if-le v7, v8, :cond_4

    goto :goto_3

    .line 916
    :cond_4
    nop

    .line 917
    nop

    .line 918
    move v9, v7

    goto :goto_1

    .line 919
    :cond_5
    :goto_3
    invoke-static {v6, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 920
    :catch_0
    move-exception v6

    .line 907
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    :cond_6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private PrepareExtraDllStorage(Z)Ljava/lang/String;
    .locals 11

    .line 846
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cerf_extra_dlls"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 847
    const-string v1, ""

    if-nez p1, :cond_0

    return-object v1

    .line 849
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 850
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\uc571 \ub0b4\ubd80 DLL \ud3f4\ub354\ub97c \ub9cc\ub4e4\uc9c0 \ubabb\ud588\uc2b5\ub2c8\ub2e4."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 851
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    const-string v2, ".dll"

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 853
    :try_start_1
    array-length v4, p1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, p1, v5

    .line 854
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 855
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 856
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uc774\uc804 DLL\uc744 \uc815\ub9ac\ud558\uc9c0 \ubabb\ud588\uc2b5\ub2c8\ub2e4: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 853
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 859
    :cond_5
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v4, "extra_dlls"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 860
    if-nez p1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 861
    :cond_6
    const/16 v4, 0x4000

    new-array v4, v4, [B

    .line 862
    array-length v5, p1

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_c

    aget-object v7, p1, v6

    .line 863
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 864
    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_b

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_b

    const-string v8, "oleaut32.dll"

    .line 865
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_7

    .line 866
    :cond_7
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extra_dlls/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 867
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 869
    :cond_8
    :goto_4
    :try_start_3
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_9

    .line 870
    if-eqz v7, :cond_8

    invoke-virtual {v9, v4, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 872
    :cond_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 873
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v8, :cond_b

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    .line 866
    :catchall_0
    move-exception p1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v8, :cond_a

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw p1

    .line 862
    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 875
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    return-object p1

    .line 876
    :catch_0
    move-exception p1

    .line 877
    const-string v0, "CERF-Android"

    const-string v2, "\uc571 \ub0b4\ubd80 \ucd94\uac00 DLL \uc900\ube44 \uc2e4\ud328"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    return-object v1
.end method

.method private PushHostClipboard()V
    .locals 4

    .line 970
    const-string v0, "\n"

    const-string v1, "\r\n"

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    if-nez v2, :cond_0

    return-void

    .line 972
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 973
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 974
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 975
    if-nez v2, :cond_2

    return-void

    .line 976
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/railty/cerfandroid/MainActivity;->clipboardLast:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 978
    :cond_3
    iput-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->clipboardLast:Ljava/lang/String;

    .line 979
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetHostClipboard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    goto :goto_2

    .line 977
    :cond_4
    :goto_0
    return-void

    .line 973
    :cond_5
    :goto_1
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 982
    :goto_2
    return-void
.end method

.method private SaveScreenshot()V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->getWidth()I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    invoke-virtual {v1}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->getHeight()I

    move-result v1

    .line 739
    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 741
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    new-instance v2, Lcom/railty/cerfandroid/MainActivity$16;

    invoke-direct {v2, p0, v0}, Lcom/railty/cerfandroid/MainActivity$16;-><init>(Lcom/railty/cerfandroid/MainActivity;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    invoke-static {v1, v0, v2, v3}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 762
    return-void

    .line 739
    :cond_1
    :goto_0
    return-void
.end method

.method private SaveStateAndExit()V
    .locals 2

    .line 654
    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->stateOperationBusy:Z

    if-eqz v0, :cond_0

    return-void

    .line 655
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->stateOperationBusy:Z

    .line 656
    const-string v0, "\ud604\uc7ac \uc0c1\ud0dc \uc800\uc7a5 \uc911\u2026"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 657
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->stateExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$13;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/MainActivity$13;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 700
    return-void
.end method

.method private SetBatteryLinked(Z)V
    .locals 2

    .line 485
    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 486
    :cond_0
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "battery_link"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    if-eqz p1, :cond_1

    .line 489
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/railty/cerfandroid/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->ApplyPhoneBattery(Landroid/content/Intent;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    :goto_0
    return-void
.end method

.method private ShowBlackScreenForSoftReset()V
    .locals 5

    .line 725
    const-string v0, ""

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->lastBootLog:Ljava/lang/String;

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 727
    const-wide/16 v3, 0x3e8

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogVisibleUntil:J

    .line 728
    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogMaximumUntil:J

    .line 729
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBootLog:Z

    .line 730
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBlackScreen:Z

    .line 731
    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 733
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    return-void
.end method

.method private ShowBootLogForReset(JJ)V
    .locals 2

    .line 711
    const-string v0, ""

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->lastBootLog:Ljava/lang/String;

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 713
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogVisibleUntil:J

    .line 714
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    const/4 p2, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBootLog:Z

    .line 715
    iput-boolean p2, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBlackScreen:Z

    .line 716
    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogMaximumUntil:J

    .line 717
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    const-string p3, "CERF reset requested; collecting boot log..."

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    iget-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->portraitBootLog:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    new-instance p2, Lcom/railty/cerfandroid/MainActivity$15;

    invoke-direct {p2, p0}, Lcom/railty/cerfandroid/MainActivity$15;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 722
    :cond_1
    return-void
.end method

.method private ShowMenu(Landroid/view/View;)V
    .locals 14

    .line 504
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 505
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 506
    const-string v1, "\ub3d9\uc791"

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 507
    const-string v2, "\uc18c\ud504\ud2b8 \ub9ac\uc14b"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 508
    const-string v2, "\ud558\ub4dc \ub9ac\uc14b..."

    const/4 v5, 0x2

    invoke-interface {v1, v3, v5, v4, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 509
    const-string v2, "\uc124\uc815..."

    const/4 v6, 0x3

    invoke-interface {v1, v3, v6, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 510
    const-string v2, "\ubc30\ud130\ub9ac"

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 511
    const/16 v7, 0x18

    const-string v8, "\uc2a4\ub9c8\ud2b8\ud3f0 \ubc30\ud130\ub9ac \uc5f0\ub3d9"

    invoke-interface {v2, v3, v7, v3, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 513
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 514
    iget-boolean v8, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 515
    const/16 v7, 0xf

    const-string v8, "\ubc30\ud130\ub9ac \uc804\uc6d0 \uc0ac\uc6a9"

    invoke-interface {v2, v3, v7, v4, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 517
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 518
    iget-boolean v8, p0, Lcom/railty/cerfandroid/MainActivity;->batteryOnBattery:Z

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 519
    iget-boolean v8, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    xor-int/2addr v8, v4

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 520
    const-string v7, "\ucda9\uc804 \uc794\ub7c9"

    invoke-interface {v2, v3, v3, v5, v7}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 521
    const/4 v7, 0x6

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    .line 523
    new-array v9, v7, [I

    fill-array-data v9, :array_1

    .line 524
    invoke-interface {v2, v6, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 525
    move v10, v3

    :goto_0
    if-ge v10, v7, :cond_1

    .line 526
    aget v11, v8, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget v13, v9, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v6, v11, v10, v12}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    .line 528
    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 529
    iget v12, p0, Lcom/railty/cerfandroid/MainActivity;->batteryPercent:I

    aget v13, v9, v10

    if-ne v12, v13, :cond_0

    move v12, v4

    goto :goto_1

    :cond_0
    move v12, v3

    :goto_1
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 530
    iget-boolean v12, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    xor-int/2addr v12, v4

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 533
    :cond_1
    const/4 v2, 0x4

    const-string v8, "\uc885\ub8cc"

    const/4 v9, 0x5

    invoke-interface {v1, v3, v2, v9, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 534
    iget-boolean v2, p0, Lcom/railty/cerfandroid/MainActivity;->gpsCardSelected:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    const-string v8, "GPS \u2192 PCMCIA COM"

    invoke-interface {v1, v3, v2, v7, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 535
    :cond_2
    const-string v1, "\ud654\uba74"

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 536
    const-string v2, "\ud654\uba74 \ube44\uc728 \uc720\uc9c0"

    const/16 v7, 0xa

    invoke-interface {v1, v4, v7, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 537
    const-string v2, "\ud654\uba74 \ub298\uc774\uae30"

    const/16 v8, 0xb

    invoke-interface {v1, v4, v8, v4, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 538
    const-string v2, "\uc815\uc218 \ubc30\uc728"

    const/16 v9, 0xc

    invoke-interface {v1, v4, v9, v5, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 539
    invoke-interface {v1, v4, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 540
    iget v2, p0, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    if-ne v2, v4, :cond_3

    move v7, v8

    goto :goto_2

    .line 541
    :cond_3
    iget v2, p0, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    if-ne v2, v5, :cond_4

    move v7, v9

    .line 540
    :cond_4
    :goto_2
    invoke-interface {v1, v7}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 541
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 542
    const/16 v2, 0xd

    const-string v7, "\uc2a4\ud06c\ub9b0\uc0f7 \uc800\uc7a5"

    invoke-interface {v1, v5, v2, v6, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 543
    const-string v1, "\ub3c4\uc6c0\ub9d0"

    invoke-interface {p1, v1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    .line 544
    const-string v1, "\uc0ac\uc6a9 \uc548\ub0b4 (\ube0c\ub77c\uc6b0\uc800\uc5d0\uc11c \uc5f4\uae30)"

    const/16 v2, 0x14

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 545
    const/16 v1, 0x15

    const-string v2, "\uc815\ubcf4"

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 546
    new-instance p1, Lcom/railty/cerfandroid/MainActivity$10;

    invoke-direct {p1, p0}, Lcom/railty/cerfandroid/MainActivity$10;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 552
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 553
    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x13
        0x16
        0x17
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x50
        0x3c
        0x28
        0x14
        0x5
    .end array-data
.end method

.method private StartClipboardShare(Z)V
    .locals 3

    .line 957
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    .line 959
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    if-nez p1, :cond_1

    return-void

    .line 960
    :cond_1
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    new-instance v0, Lcom/railty/cerfandroid/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/MainActivity$18;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 965
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->PushHostClipboard()V

    .line 966
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->clipboardPoll:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    return-void

    .line 957
    :cond_2
    :goto_0
    return-void
.end method

.method private static TailLines(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    nop

    .line 104
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    if-lez v0, :cond_1

    .line 105
    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 106
    if-gez v0, :cond_0

    return-object p0

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000()I
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeGuestSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/railty/cerfandroid/MainActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/railty/cerfandroid/MainActivity;->guestWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/railty/cerfandroid/MainActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogLines:I

    return p0
.end method

.method static synthetic access$102(Lcom/railty/cerfandroid/MainActivity;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/railty/cerfandroid/MainActivity;->guestWidth:I

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->TailLines(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/railty/cerfandroid/MainActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/railty/cerfandroid/MainActivity;->portraitBootLog:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->FitPortraitBootLogToScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/railty/cerfandroid/MainActivity;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogMaximumUntil:J

    return-wide v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeFrameReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/railty/cerfandroid/MainActivity;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogVisibleUntil:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/railty/cerfandroid/MainActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBootLog:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/railty/cerfandroid/MainActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/railty/cerfandroid/MainActivity;->guestHeight:I

    return p0
.end method

.method static synthetic access$2000(IZ)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->nativeKey(IZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/railty/cerfandroid/MainActivity;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/railty/cerfandroid/MainActivity;->guestHeight:I

    return p1
.end method

.method static synthetic access$2100()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeRequestGuestWake()V

    return-void
.end method

.method static synthetic access$2200(Lcom/railty/cerfandroid/MainActivity;I)I
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/railty/cerfandroid/MainActivity;Z)[F
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->HandleCorners(Z)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/railty/cerfandroid/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->ShowMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2600(Ljava/lang/String;)[B
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->OperatorNameBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Ljava/lang/String;[B)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->nativeSetCellOperator(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$2800(I)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetCellSignal(I)V

    return-void
.end method

.method static synthetic access$2900(ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->nativeSetCallState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    return-object p0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativePollCellAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeDeliverSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->nativeSetPhonebook([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->nativeDeliverText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/railty/cerfandroid/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->ApplyPhoneBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/railty/cerfandroid/MainActivity;I)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->OnMenu(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/railty/cerfandroid/MainActivity;JJ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/railty/cerfandroid/MainActivity;->ShowBootLogForReset(JJ)V

    return-void
.end method

.method static synthetic access$3700()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeHardReset()V

    return-void
.end method

.method static synthetic access$3800(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->SaveStateAndExit()V

    return-void
.end method

.method static synthetic access$3900(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->FinishEmulatorProcess()V

    return-void
.end method

.method static synthetic access$400(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CellBridge;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->cell:Lcom/railty/cerfandroid/CellBridge;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->activeRomPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSaveState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4202(Lcom/railty/cerfandroid/MainActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->stateOperationBusy:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/railty/cerfandroid/MainActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    return p0
.end method

.method static synthetic access$4400(Landroid/view/Surface;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/railty/cerfandroid/MainActivity;Z)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->PrepareExtraDllStorage(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetGaNicEnabled(Z)V

    return-void
.end method

.method static synthetic access$4700(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetOemName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->autorunCommand:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetAutorun(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeGetBootLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetHideTaskbar(Z)V

    return-void
.end method

.method static synthetic access$5100(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetHideImeState(Z)V

    return-void
.end method

.method static synthetic access$5200(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetTimeSync(Z)V

    return-void
.end method

.method static synthetic access$5300(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetClipboardEnabled(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/railty/cerfandroid/MainActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/railty/cerfandroid/MainActivity;->cameraLink:Z

    return p0
.end method

.method static synthetic access$5402(Lcom/railty/cerfandroid/MainActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->cameraLink:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/railty/cerfandroid/MainActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/railty/cerfandroid/MainActivity;->nledLink:Z

    return p0
.end method

.method static synthetic access$5502(Lcom/railty/cerfandroid/MainActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->nledLink:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/railty/cerfandroid/MainActivity;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->StartClipboardShare(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->restoreStatePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5800(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZDDZLjava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 24
    invoke-static/range {p0 .. p19}, Lcom/railty/cerfandroid/MainActivity;->nativeStart(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZDDZLjava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(FFI)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/MainActivity;->nativeTouch(FFI)V

    return-void
.end method

.method static synthetic access$600(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6000()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeTakeGuestClipboard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/railty/cerfandroid/MainActivity;)Landroid/content/ClipboardManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->clipboard:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->clipboardLast:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6202(Lcom/railty/cerfandroid/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->clipboardLast:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->PushHostClipboard()V

    return-void
.end method

.method static synthetic access$6400()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeCameraWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CameraBridge;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->camera:Lcom/railty/cerfandroid/CameraBridge;

    return-object p0
.end method

.method static synthetic access$6502(Lcom/railty/cerfandroid/MainActivity;Lcom/railty/cerfandroid/CameraBridge;)Lcom/railty/cerfandroid/CameraBridge;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->camera:Lcom/railty/cerfandroid/CameraBridge;

    return-object p1
.end method

.method static synthetic access$6600([III)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/MainActivity;->nativeCameraFrame([III)V

    return-void
.end method

.method static synthetic access$6700()I
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeNledState()I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/railty/cerfandroid/MainActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/railty/cerfandroid/MainActivity;->nledTick:I

    return p0
.end method

.method static synthetic access$6804(Lcom/railty/cerfandroid/MainActivity;)I
    .locals 1

    .line 24
    iget v0, p0, Lcom/railty/cerfandroid/MainActivity;->nledTick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/railty/cerfandroid/MainActivity;->nledTick:I

    return v0
.end method

.method static synthetic access$6900(Lcom/railty/cerfandroid/MainActivity;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->ledDot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeGuestSleeping()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/railty/cerfandroid/MainActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/railty/cerfandroid/MainActivity;->vibrating:Z

    return p0
.end method

.method static synthetic access$7002(Lcom/railty/cerfandroid/MainActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->vibrating:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Vibrator;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->vibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/railty/cerfandroid/MainActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBlackScreen:Z

    return p0
.end method

.method static synthetic access$802(Lcom/railty/cerfandroid/MainActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity;->softResetBlackScreen:Z

    return p1
.end method

.method static synthetic access$900(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/railty/cerfandroid/MainActivity;->lastBootLog:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/railty/cerfandroid/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->lastBootLog:Ljava/lang/String;

    return-object p1
.end method

.method private dp(I)I
    .locals 1

    .line 765
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private static native nativeApplyHotSettings(Ljava/lang/String;Ljava/lang/String;IIIZZDDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCameraFrame([III)V
.end method

.method private static native nativeCameraWanted()Z
.end method

.method private static native nativeDeliverSms(Ljava/lang/String;)V
.end method

.method private static native nativeDeliverText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeFrameReady()Z
.end method

.method private static native nativeGetBootLog()Ljava/lang/String;
.end method

.method private static native nativeGuestSize()I
.end method

.method private static native nativeGuestSleeping()Z
.end method

.method private static native nativeHardReset()V
.end method

.method private static native nativeKey(IZ)V
.end method

.method private static native nativeNledState()I
.end method

.method private static native nativePause()V
.end method

.method private static native nativePollCellAction()Ljava/lang/String;
.end method

.method private static native nativeRequestGuestWake()V
.end method

.method private static native nativeResume()V
.end method

.method private static native nativeSaveState(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeSetAutorun(Ljava/lang/String;)V
.end method

.method private static native nativeSetBatteryState(IZ)V
.end method

.method private static native nativeSetCallState(ILjava/lang/String;)V
.end method

.method private static native nativeSetCellEnabled(Z)V
.end method

.method private static native nativeSetCellOperator(Ljava/lang/String;[B)V
.end method

.method private static native nativeSetCellSignal(I)V
.end method

.method private static native nativeSetClipboardEnabled(Z)V
.end method

.method private static native nativeSetGaNicEnabled(Z)V
.end method

.method private static native nativeSetHideImeState(Z)V
.end method

.method private static native nativeSetHideTaskbar(Z)V
.end method

.method private static native nativeSetHostClipboard(Ljava/lang/String;)V
.end method

.method private static native nativeSetOemName(Ljava/lang/String;)V
.end method

.method private static native nativeSetPhonebook([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;)V
.end method

.method private static native nativeSetTimeSync(Z)V
.end method

.method private static native nativeSoftReset()V
.end method

.method private static native nativeStart(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZDDZLjava/lang/String;ZZLjava/lang/String;)V
.end method

.method private static native nativeStop()V
.end method

.method private static native nativeTakeGuestClipboard()Ljava/lang/String;
.end method

.method private static native nativeTouch(FFI)V
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->hardwareKeys:Lcom/railty/cerfandroid/HardwareKeys;

    invoke-virtual {v0, p1}, Lcom/railty/cerfandroid/HardwareKeys;->OnMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 997
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->hardwareKeys:Lcom/railty/cerfandroid/HardwareKeys;

    invoke-virtual {v0, p1}, Lcom/railty/cerfandroid/HardwareKeys;->OnKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 991
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    .line 404
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 405
    const/16 v1, 0x29

    move/from16 v2, p1

    if-ne v2, v1, :cond_6

    const/4 v1, -0x1

    move/from16 v2, p2

    if-eq v2, v1, :cond_0

    goto/16 :goto_2

    .line 406
    :cond_0
    invoke-static {v0}, Lcom/railty/cerfandroid/DeviceSettings;->Load(Landroid/content/Context;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v1

    .line 407
    iget-object v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 408
    :cond_1
    iget-object v4, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    iget-object v5, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    iget v6, v1, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    iget v7, v1, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    iget v8, v1, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    iget-boolean v9, v1, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    iget-boolean v10, v1, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    iget-wide v11, v1, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    iget-wide v13, v1, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    iget-object v15, v1, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    iget-object v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    move-object/from16 v16, v2

    invoke-static/range {v4 .. v16}, Lcom/railty/cerfandroid/MainActivity;->nativeApplyHotSettings(Ljava/lang/String;Ljava/lang/String;IIIZZDDLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uc2e4\uc2dc\uac04 \uc801\uc6a9 \uc2e4\ud328: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 415
    return-void

    .line 417
    :cond_2
    iget-object v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v4, "android_gnss"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/railty/cerfandroid/MainActivity;->gpsCardSelected:Z

    .line 418
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iget-boolean v4, v0, Lcom/railty/cerfandroid/MainActivity;->gpsCardSelected:Z

    invoke-virtual {v2, v4}, Lcom/railty/cerfandroid/AndroidGpsNmea;->SetCardSelected(Z)V

    .line 419
    :cond_3
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    iput-boolean v2, v0, Lcom/railty/cerfandroid/MainActivity;->portraitBootLog:Z

    .line 420
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x48

    goto :goto_0

    :cond_4
    const/16 v2, 0x30

    :goto_0
    iput v2, v0, Lcom/railty/cerfandroid/MainActivity;->bootLogLines:I

    .line 421
    iget-boolean v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    if-eqz v1, :cond_5

    .line 422
    const/4 v1, 0x7

    goto :goto_1

    .line 423
    :cond_5
    const/4 v1, 0x6

    .line 421
    :goto_1
    invoke-virtual {v0, v1}, Lcom/railty/cerfandroid/MainActivity;->setRequestedOrientation(I)V

    .line 424
    iget-object v1, v0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    invoke-virtual {v1}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->requestLayout()V

    .line 425
    const-string v1, "PCMCIA \uce74\ub4dc\uc640 \uc2e4\ud589 \uc911 \ubcc0\uacbd \uac00\ub2a5\ud55c \uc124\uc815\uc744 \uc801\uc6a9\ud588\uc2b5\ub2c8\ub2e4. ROM\u00b7\uc0c9 \uae4a\uc774\ub294 \ub2e4\uc74c \ubd80\ud305\ubd80\ud130, GLES \ube0c\ub9ac\uc9c0\ub294 \uc5d0\ubbac\ub808\uc774\ud130\ub97c \uc885\ub8cc\ud55c \ub4a4 \ub2e4\uc2dc \uc2e4\ud589\ud560 \ub54c \uc801\uc6a9\ub429\ub2c8\ub2e4."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 429
    return-void

    .line 405
    :cond_6
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->Load(Landroid/content/Context;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object p1

    .line 124
    iget-object v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->activeRomPath:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.railty.cerfandroid.RESTORE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->restoreStatePath:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->restoreStatePath:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->restoreStatePath:Ljava/lang/String;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.railty.cerfandroid.AUTORUN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->autorunCommand:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->autorunCommand:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->autorunCommand:Ljava/lang/String;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->autorunCommand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->restoreStatePath:Ljava/lang/String;

    .line 130
    :cond_2
    iget-boolean v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    iput-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->portraitBootLog:Z

    .line 131
    iget-boolean v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    const/16 v1, 0x30

    if-eqz v0, :cond_3

    const/16 v0, 0x48

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogLines:I

    .line 132
    iget-boolean v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    const/4 v2, 0x6

    if-eqz v0, :cond_4

    .line 133
    const/4 v0, 0x7

    goto :goto_1

    .line 134
    :cond_4
    move v0, v2

    .line 132
    :goto_1
    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->setRequestedOrientation(I)V

    .line 135
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x480

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v0, v3, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 142
    :cond_5
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 143
    const/high16 v0, -0x1000000

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 145
    new-instance v5, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    invoke-direct {v5, p0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    iput-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    .line 146
    iget-boolean v5, p1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    const/16 v6, 0x11

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v13, 0x0

    if-eqz v5, :cond_7

    iget-boolean v5, p1, Lcom/railty/cerfandroid/DeviceSettings;->phoneKeypad:Z

    if-eqz v5, :cond_7

    .line 147
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v11, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42680000    # 58.0f

    invoke-direct {v11, v8, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v9, Lcom/railty/cerfandroid/MainActivity$2;

    invoke-direct {v9, p0}, Lcom/railty/cerfandroid/MainActivity$2;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    .line 158
    iget-boolean v11, p1, Lcom/railty/cerfandroid/DeviceSettings;->qwertyKeypad:Z

    if-eqz v11, :cond_6

    .line 159
    new-instance v11, Lcom/railty/cerfandroid/QwertyKeypad;

    invoke-direct {v11, p0, v9}, Lcom/railty/cerfandroid/QwertyKeypad;-><init>(Landroid/content/Context;Lcom/railty/cerfandroid/PhoneKeypad$KeySink;)V

    goto :goto_2

    :cond_6
    new-instance v11, Lcom/railty/cerfandroid/PhoneKeypad;

    invoke-direct {v11, p0, v9}, Lcom/railty/cerfandroid/PhoneKeypad;-><init>(Landroid/content/Context;Lcom/railty/cerfandroid/PhoneKeypad$KeySink;)V

    .line 160
    :goto_2
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42280000    # 42.0f

    invoke-direct {v9, v8, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    goto :goto_3

    .line 165
    :cond_7
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->emulatorView:Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :goto_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    .line 171
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    const-string v9, "CERF Device Emulator starting..."

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    const/16 v9, 0xc8

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    iget-boolean v5, p1, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    if-eqz v5, :cond_8

    const/high16 v5, 0x41400000    # 12.0f

    goto :goto_4

    :cond_8
    const/high16 v5, 0x41000000    # 8.0f

    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 176
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    const v5, 0x800033

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v5

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {p0, v9}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v9

    invoke-virtual {v0, v5, v11, v12, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 179
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogView:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->ledDot:Landroid/view/View;

    .line 183
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 184
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 185
    const/16 v5, 0xc9

    const/16 v9, 0x5a

    const/16 v11, 0x4e

    invoke-static {v11, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 186
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity;->ledDot:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->ledDot:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {p0, v9}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v9

    const v12, 0x800035

    invoke-direct {v0, v11, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 190
    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v13, v9, v2, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->ledDot:Landroid/view/View;

    invoke-virtual {v10, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->vibrator:Landroid/os/Vibrator;

    .line 193
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->nledPoll:Ljava/lang/Runnable;

    const-wide/16 v11, 0x64

    invoke-virtual {v0, v2, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity;->cameraPoll:Ljava/lang/Runnable;

    const-wide/16 v11, 0x1f4

    invoke-virtual {v0, v2, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    const-string v2, "CE \uc77c\uc2dc\uc911\ub2e8\ub428\n\ud654\uba74\uc744 \ud0ed\ud558\uc5ec \uae68\uc6b0\uae30"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v9

    const/16 v11, 0x12

    invoke-direct {p0, v11}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v12

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v11}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v0, v9, v12, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 202
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/16 v9, 0x26

    const/16 v11, 0xcd

    invoke-static {v11, v2, v3, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 203
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    new-instance v2, Lcom/railty/cerfandroid/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/railty/cerfandroid/MainActivity$3;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->sleepNotice:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 212
    move v0, v8

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 214
    const/16 v2, 0x8c

    const/16 v3, 0xff

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 215
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {p0, v13}, Lcom/railty/cerfandroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 217
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x50

    invoke-direct {p0, v3}, Lcom/railty/cerfandroid/MainActivity;->dp(I)I

    move-result v3

    .line 218
    const-string v5, "handle_right"

    invoke-interface {v12, v5, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    const v6, 0x800005

    goto :goto_5

    :cond_9
    const v6, 0x800003

    :goto_5
    or-int/2addr v1, v6

    invoke-direct {v9, v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 219
    const-string v1, "handle_top"

    invoke-interface {v12, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 220
    invoke-virtual {v10, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gez v0, :cond_a

    .line 222
    new-instance v0, Lcom/railty/cerfandroid/MainActivity$4;

    invoke-direct {v0, p0, v9, v10, v7}, Lcom/railty/cerfandroid/MainActivity$4;-><init>(Lcom/railty/cerfandroid/MainActivity;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 230
    :cond_a
    invoke-interface {v12, v5, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-array v11, v4, [Z

    aput-boolean v0, v11, v13

    .line 231
    aget-boolean v0, v11, v13

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->HandleCorners(Z)[F

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 232
    new-instance v5, Lcom/railty/cerfandroid/MainActivity$5;

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/railty/cerfandroid/MainActivity$5;-><init>(Lcom/railty/cerfandroid/MainActivity;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;[ZLandroid/content/SharedPreferences;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    invoke-virtual {p0, v13}, Lcom/railty/cerfandroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "battery_link"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 294
    iput-boolean v4, v6, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    .line 295
    iget-object v0, v6, Lcom/railty/cerfandroid/MainActivity;->batteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/railty/cerfandroid/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->ApplyPhoneBattery(Landroid/content/Intent;)V

    .line 298
    :cond_b
    iget-boolean v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->nativeSetCellEnabled(Z)V

    .line 299
    iget-boolean v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/railty/cerfandroid/CellBridge;

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/railty/cerfandroid/MainActivity$6;-><init>(Lcom/railty/cerfandroid/MainActivity;Lcom/railty/cerfandroid/DeviceSettings;)V

    new-instance p1, Lcom/railty/cerfandroid/MainActivity$7;

    invoke-direct {p1, p0}, Lcom/railty/cerfandroid/MainActivity$7;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/railty/cerfandroid/CellBridge;-><init>(Landroid/content/Context;Lcom/railty/cerfandroid/CellBridge$Native;Ljava/lang/Runnable;)V

    iput-object v0, v6, Lcom/railty/cerfandroid/MainActivity;->cell:Lcom/railty/cerfandroid/CellBridge;

    .line 316
    :cond_c
    iget-object p1, v6, Lcom/railty/cerfandroid/MainActivity;->cell:Lcom/railty/cerfandroid/CellBridge;

    if-eqz p1, :cond_e

    .line 317
    iget-object p1, v6, Lcom/railty/cerfandroid/MainActivity;->cell:Lcom/railty/cerfandroid/CellBridge;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/CellBridge;->Start()V

    .line 318
    new-instance p1, Lcom/railty/cerfandroid/MainActivity$8;

    invoke-direct {p1, p0}, Lcom/railty/cerfandroid/MainActivity$8;-><init>(Lcom/railty/cerfandroid/MainActivity;)V

    invoke-static {p1}, Lcom/railty/cerfandroid/CerfNotificationListener;->SetSink(Lcom/railty/cerfandroid/CerfNotificationListener$Sink;)V

    .line 321
    const-string p1, "android.permission.SEND_SMS"

    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.RECEIVE_SMS"

    if-nez v0, :cond_d

    .line 323
    invoke-virtual {p0, v2}, Lcom/railty/cerfandroid/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 325
    invoke-virtual {p0, v1}, Lcom/railty/cerfandroid/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 327
    :cond_d
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v13

    aput-object v2, v0, v4

    const/4 p1, 0x2

    aput-object v1, v0, p1

    const/16 p1, 0x534d

    invoke-virtual {p0, v0, p1}, Lcom/railty/cerfandroid/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 332
    :cond_e
    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->Load(Landroid/content/Context;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v0, "android_gnss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v6, Lcom/railty/cerfandroid/MainActivity;->gpsCardSelected:Z

    .line 333
    new-instance p1, Lcom/railty/cerfandroid/AndroidGpsNmea;

    iget-boolean v0, v6, Lcom/railty/cerfandroid/MainActivity;->gpsCardSelected:Z

    invoke-direct {p1, p0, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;-><init>(Landroid/app/Activity;Z)V

    iput-object p1, v6, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    .line 336
    :try_start_0
    invoke-virtual {p0, v13}, Lcom/railty/cerfandroid/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "view_mode"

    invoke-interface {p1, v0, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v6, Lcom/railty/cerfandroid/MainActivity;->viewMode:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_6

    .line 337
    :catch_0
    move-exception v0

    .line 338
    iput v13, v6, Lcom/railty/cerfandroid/MainActivity;->viewMode:I

    .line 340
    :goto_6
    invoke-virtual {p0, v10}, Lcom/railty/cerfandroid/MainActivity;->setContentView(Landroid/view/View;)V

    .line 341
    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->HideSystemBars()V

    .line 342
    iget-object p1, v6, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    iget-object v0, v6, Lcom/railty/cerfandroid/MainActivity;->bootLogPoller:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity;->bootLogPoller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryLinked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/railty/cerfandroid/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->cell:Lcom/railty/cerfandroid/CellBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->cell:Lcom/railty/cerfandroid/CellBridge;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/CellBridge;->Stop()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Pause()V

    .line 437
    :cond_2
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeStop()V

    .line 438
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->stateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 439
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 440
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 114
    const-string v0, "com.railty.cerfandroid.AUTORUN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    const-string p1, "\uc774\ubbf8 \uc2e4\ud589 \uc911\uc774\ub77c \ubc14\ub85c\uac00\uae30 \ud504\ub85c\uadf8\ub7a8\uc740 \uc790\ub3d9 \uc2e4\ud589\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 385
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Pause()V

    .line 386
    :cond_0
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativePause()V

    .line 387
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 399
    const/16 p2, 0x47

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->PermissionResult()V

    .line 400
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 392
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->nativeResume()V

    .line 393
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity;->gps:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Resume()V

    .line 394
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 377
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 378
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->HideSystemBars()V

    .line 379
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/railty/cerfandroid/MainActivity;->PushHostClipboard()V

    .line 380
    :cond_1
    return-void
.end method

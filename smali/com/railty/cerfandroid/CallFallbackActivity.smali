.class public final Lcom/railty/cerfandroid/CallFallbackActivity;
.super Landroid/app/Activity;
.source "CallFallbackActivity.java"


# instance fields
.field private answer:Landroid/widget/Button;

.field private hangup:Landroid/widget/Button;

.field private status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private Refresh()V
    .locals 6

    .line 57
    invoke-static {}, Lcom/railty/cerfandroid/CerfInCallService;->CurrentState()I

    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/railty/cerfandroid/CallFallbackActivity;->finish()V

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/railty/cerfandroid/CerfInCallService;->CurrentNumber()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v3, "\uc804\ud654 \uc218\uc2e0"

    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v3, "\ubc1c\uc2e0 \uc911"

    goto :goto_0

    :cond_2
    const-string v3, "\ud1b5\ud654 \uc911"

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->status:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->answer:Landroid/widget/Button;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/railty/cerfandroid/CallFallbackActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/railty/cerfandroid/CallFallbackActivity;->Refresh()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/railty/cerfandroid/CallFallbackActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000    # FLAG_SHOW_WHEN_LOCKED

    const/high16 v1, 0x200000   # FLAG_TURN_SCREEN_ON

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    .line 26
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 29
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 30
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->status:Landroid/widget/TextView;

    .line 31
    iget-object v1, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->status:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v1, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->status:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    iget-object v1, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 34
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->answer:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->answer:Landroid/widget/Button;

    const-string v1, "\ubc1b\uae30"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->answer:Landroid/widget/Button;

    new-instance v1, Lcom/railty/cerfandroid/CallFallbackActivity$1;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/CallFallbackActivity$1;-><init>(Lcom/railty/cerfandroid/CallFallbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->answer:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->hangup:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->hangup:Landroid/widget/Button;

    const-string v1, "\ub04a\uae30"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->hangup:Landroid/widget/Button;

    new-instance v1, Lcom/railty/cerfandroid/CallFallbackActivity$2;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/CallFallbackActivity$2;-><init>(Lcom/railty/cerfandroid/CallFallbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity;->hangup:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/CallFallbackActivity;->setContentView(Landroid/view/View;)V

    .line 48
    new-instance p1, Lcom/railty/cerfandroid/CallFallbackActivity$3;

    invoke-direct {p1, p0}, Lcom/railty/cerfandroid/CallFallbackActivity$3;-><init>(Lcom/railty/cerfandroid/CallFallbackActivity;)V

    invoke-static {p1}, Lcom/railty/cerfandroid/CerfInCallService;->SetFallbackChanged(Ljava/lang/Runnable;)V

    .line 53
    invoke-direct {p0}, Lcom/railty/cerfandroid/CallFallbackActivity;->Refresh()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/railty/cerfandroid/CerfInCallService;->SetFallbackChanged(Ljava/lang/Runnable;)V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method

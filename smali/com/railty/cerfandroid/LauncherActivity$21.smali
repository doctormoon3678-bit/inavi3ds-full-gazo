.class Lcom/railty/cerfandroid/LauncherActivity$21;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->ShowCreateCfImageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$nameInput:Landroid/widget/EditText;

.field final synthetic val$sizeInput:Landroid/widget/EditText;

.field final synthetic val$sizeUnit:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->val$nameInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->val$sizeInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->val$sizeUnit:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 694
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->val$nameInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 695
    const-string p2, "[\\\\/:*?\"<>|]"

    const-string v0, "_"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 698
    const/4 p2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->val$sizeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    nop

    .line 704
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->val$sizeUnit:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 705
    :goto_0
    const/16 v2, 0x4000

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    if-lt v0, p2, :cond_8

    const/16 v4, 0x10

    if-le v0, v4, :cond_2

    goto/16 :goto_4

    :cond_1
    if-lt v0, v3, :cond_8

    if-le v0, v2, :cond_2

    goto/16 :goto_4

    .line 711
    :cond_2
    if-eqz v1, :cond_3

    mul-int/lit16 v0, v0, 0x400

    .line 712
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    if-lt v0, v3, :cond_7

    if-le v0, v2, :cond_4

    goto :goto_3

    .line 717
    :cond_4
    const/16 p2, 0x400

    if-le v0, p2, :cond_6

    .line 718
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    const-string v1, "\ub300\uc6a9\ub7c9 CF \uc774\ubbf8\uc9c0"

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 722
    rem-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, v0, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GiB"

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MiB"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 720
    const-string v3, "%s CF \uc774\ubbf8\uc9c0 \uc0dd\uc131\uc5d0\ub294 \ucda9\ubd84\ud55c \uc800\uc7a5 \uacf5\uac04\uc774 \ud544\uc694\ud569\ub2c8\ub2e4. \uacc4\uc18d\ud560\uae4c\uc694?"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$21$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/railty/cerfandroid/LauncherActivity$21$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$21;Ljava/lang/String;I)V

    .line 723
    const-string p1, "\uacc4\uc18d"

    invoke-virtual {p2, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 728
    const-string p2, "\ucde8\uc18c"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 731
    :cond_6
    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p2, p1, v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$2100(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;I)V

    .line 733
    :goto_2
    return-void

    .line 713
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const-string v0, "\ud30c\uc77c \uc774\ub984\uacfc 4 MiB\u201316 GiB \ud06c\uae30\ub97c \ud655\uc778\ud558\uc138\uc694"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 714
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 715
    return-void

    .line 707
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const-string v0, "\ud06c\uae30\ub294 4 MiB\u201316 GiB \ubc94\uc704\ub85c \uc785\ub825\ud558\uc138\uc694"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 709
    return-void

    .line 699
    :catch_0
    move-exception p1

    .line 700
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$21;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const-string v0, "CF \uc774\ubbf8\uc9c0 \uc6a9\ub7c9\uc744 \uc22b\uc790\ub85c \uc785\ub825\ud558\uc138\uc694"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 702
    return-void
.end method

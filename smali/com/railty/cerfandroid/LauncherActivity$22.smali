.class Lcom/railty/cerfandroid/LauncherActivity$22;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->CreateCfImage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$dataMb:I

.field final synthetic val$outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 757
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput p2, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$dataMb:I

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$outputFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 759
    nop

    .line 761
    :try_start_0
    iget v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$dataMb:I

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$outputFile:Ljava/io/File;

    iget v1, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$dataMb:I

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->access$2200(Ljava/io/File;I)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$outputFile:Ljava/io/File;

    iget v1, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$dataMb:I

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->access$2300(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 763
    :catch_0
    move-exception v0

    .line 764
    nop

    .line 765
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->val$outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 767
    :goto_1
    nop

    .line 768
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v2, Lcom/railty/cerfandroid/LauncherActivity$22$1;

    invoke-direct {v2, p0, v0}, Lcom/railty/cerfandroid/LauncherActivity$22$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$22;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Lcom/railty/cerfandroid/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 785
    return-void
.end method

.class Lcom/railty/cerfandroid/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$1$1;->this$1:Lcom/railty/cerfandroid/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1$1;->this$1:Lcom/railty/cerfandroid/MainActivity$1;

    iget-object v0, v0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1400(Lcom/railty/cerfandroid/MainActivity;)V

    return-void
.end method

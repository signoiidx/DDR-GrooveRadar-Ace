%% テキスト ファイルからのデータのインポート
% 次のテキスト ファイルからデータをインポートするスクリプト:
%
%    ファイル名: C:\Users\User\github\ddr_grooveradar_ace\ddr_personal.csv
%
% MATLAB からの自動生成日: 2020/10/13 07:17:42

%% インポート オプションの設定およびデータのインポート
opts = delimitedTextImportOptions("NumVariables", 12);

% 範囲と区切り記号の指定
opts.DataLines = [1, Inf];
opts.Delimiter = ",";

% 列名と型の指定
opts.VariableNames = ["id", "title", "besp", "bsp", "dsp", "esp", "csp", "bdp", "ddp", "edp", "cdp", "Var12"];
opts.SelectedVariableNames = ["id", "title", "besp", "bsp", "dsp", "esp", "csp", "bdp", "ddp", "edp", "cdp"];
opts.VariableTypes = ["double", "string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "string"];

% ファイル レベルのプロパティを指定
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% 変数プロパティを指定
opts = setvaropts(opts, ["title", "Var12"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["title", "Var12"], "EmptyFieldRule", "auto");
opts = setvaropts(opts, ["id", "besp", "bsp", "dsp", "esp", "csp", "bdp", "ddp", "edp", "cdp"], "FillValue", 0);
opts = setvaropts(opts, ["besp", "bsp", "dsp", "esp", "csp", "bdp", "ddp", "edp", "cdp"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["besp", "bsp", "dsp", "esp", "csp", "bdp", "ddp", "edp", "cdp"], "ThousandsSeparator", ",");

% データのインポート
ddr_personal = readtable("../ddr_personal.csv", opts);


%% 一時変数のクリア
clear opts